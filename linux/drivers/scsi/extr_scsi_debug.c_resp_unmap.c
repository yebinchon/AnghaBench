
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unmap_block_desc {int blocks; int lba; } ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int ILLEGAL_REQUEST ;
 int INSUFF_RES_ASC ;
 int INSUFF_RES_ASCQ ;
 int SDEB_IN_CDB ;
 int atomic_rw ;
 int check_condition_result ;
 int check_device_access_params (struct scsi_cmnd*,unsigned long long,unsigned int,int) ;
 unsigned int get_unaligned_be16 (unsigned char*) ;
 unsigned int get_unaligned_be32 (int *) ;
 unsigned long long get_unaligned_be64 (int *) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (unsigned int,int ) ;
 int mk_sense_buffer (struct scsi_cmnd*,int ,int ,int ) ;
 int mk_sense_invalid_fld (struct scsi_cmnd*,int ,int,int) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_debug_lbp () ;
 int scsi_sg_copy_to_buffer (struct scsi_cmnd*,unsigned char*,unsigned int) ;
 unsigned int sdebug_unmap_max_desc ;
 int unmap_region (unsigned long long,unsigned int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int resp_unmap(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
{
 unsigned char *buf;
 struct unmap_block_desc *desc;
 unsigned int i, payload_len, descriptors;
 int ret;
 unsigned long iflags;


 if (!scsi_debug_lbp())
  return 0;
 payload_len = get_unaligned_be16(scp->cmnd + 7);
 BUG_ON(scsi_bufflen(scp) != payload_len);

 descriptors = (payload_len - 8) / 16;
 if (descriptors > sdebug_unmap_max_desc) {
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 7, -1);
  return check_condition_result;
 }

 buf = kzalloc(scsi_bufflen(scp), GFP_ATOMIC);
 if (!buf) {
  mk_sense_buffer(scp, ILLEGAL_REQUEST, INSUFF_RES_ASC,
    INSUFF_RES_ASCQ);
  return check_condition_result;
 }

 scsi_sg_copy_to_buffer(scp, buf, scsi_bufflen(scp));

 BUG_ON(get_unaligned_be16(&buf[0]) != payload_len - 2);
 BUG_ON(get_unaligned_be16(&buf[2]) != descriptors * 16);

 desc = (void *)&buf[8];

 write_lock_irqsave(&atomic_rw, iflags);

 for (i = 0 ; i < descriptors ; i++) {
  unsigned long long lba = get_unaligned_be64(&desc[i].lba);
  unsigned int num = get_unaligned_be32(&desc[i].blocks);

  ret = check_device_access_params(scp, lba, num, 1);
  if (ret)
   goto out;

  unmap_region(lba, num);
 }

 ret = 0;

out:
 write_unlock_irqrestore(&atomic_rw, iflags);
 kfree(buf);

 return ret;
}
