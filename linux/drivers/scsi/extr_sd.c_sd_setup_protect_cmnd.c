
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int prot_flags; TYPE_1__* request; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio* bio; } ;


 int BIP_CTRL_NOCHECK ;
 int BIP_DISK_NOCHECK ;
 int BIP_IP_CHECKSUM ;
 int SCSI_PROT_GUARD_CHECK ;
 int SCSI_PROT_IP_CHECKSUM ;
 int SCSI_PROT_REF_CHECK ;
 int SCSI_PROT_REF_INCREMENT ;
 int SCSI_PROT_TRANSFER_PI ;
 unsigned int T10_PI_TYPE3_PROTECTION ;
 int bio_integrity_flagged (struct bio*,int ) ;
 int rq_data_dir (TYPE_1__*) ;
 int scsi_set_prot_op (struct scsi_cmnd*,unsigned int) ;
 int scsi_set_prot_type (struct scsi_cmnd*,unsigned int) ;
 int sd_prot_flag_mask (unsigned int) ;
 unsigned int sd_prot_op (int ,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned char sd_setup_protect_cmnd(struct scsi_cmnd *scmd,
        unsigned int dix, unsigned int dif)
{
 struct bio *bio = scmd->request->bio;
 unsigned int prot_op = sd_prot_op(rq_data_dir(scmd->request), dix, dif);
 unsigned int protect = 0;

 if (dix) {
  if (bio_integrity_flagged(bio, BIP_IP_CHECKSUM))
   scmd->prot_flags |= SCSI_PROT_IP_CHECKSUM;

  if (bio_integrity_flagged(bio, BIP_CTRL_NOCHECK) == 0)
   scmd->prot_flags |= SCSI_PROT_GUARD_CHECK;
 }

 if (dif != T10_PI_TYPE3_PROTECTION) {
  scmd->prot_flags |= SCSI_PROT_REF_INCREMENT;

  if (bio_integrity_flagged(bio, BIP_CTRL_NOCHECK) == 0)
   scmd->prot_flags |= SCSI_PROT_REF_CHECK;
 }

 if (dif) {
  scmd->prot_flags |= SCSI_PROT_TRANSFER_PI;

  if (bio_integrity_flagged(bio, BIP_DISK_NOCHECK))
   protect = 3 << 5;
  else
   protect = 1 << 5;
 }

 scsi_set_prot_op(scmd, prot_op);
 scsi_set_prot_type(scmd, dif);
 scmd->prot_flags &= sd_prot_flag_mask(prot_op);

 return protect;
}
