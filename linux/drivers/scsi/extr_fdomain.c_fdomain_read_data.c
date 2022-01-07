
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct fdomain {scalar_t__ base; } ;
struct TYPE_2__ {int host; } ;


 scalar_t__ REG_FIFO ;
 scalar_t__ REG_FIFO_COUNT ;
 int inb (scalar_t__) ;
 int insw (scalar_t__,unsigned char*,size_t) ;
 size_t inw (scalar_t__) ;
 size_t scsi_bufflen (struct scsi_cmnd*) ;
 size_t scsi_get_resid (struct scsi_cmnd*) ;
 unsigned char* scsi_kmap_atomic_sg (int ,int ,size_t*,size_t*) ;
 int scsi_kunmap_atomic_sg (unsigned char*) ;
 int scsi_set_resid (struct scsi_cmnd*,size_t) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 struct fdomain* shost_priv (int ) ;

__attribute__((used)) static void fdomain_read_data(struct scsi_cmnd *cmd)
{
 struct fdomain *fd = shost_priv(cmd->device->host);
 unsigned char *virt, *ptr;
 size_t offset, len;

 while ((len = inw(fd->base + REG_FIFO_COUNT)) > 0) {
  offset = scsi_bufflen(cmd) - scsi_get_resid(cmd);
  virt = scsi_kmap_atomic_sg(scsi_sglist(cmd), scsi_sg_count(cmd),
        &offset, &len);
  ptr = virt + offset;
  if (len & 1)
   *ptr++ = inb(fd->base + REG_FIFO);
  if (len > 1)
   insw(fd->base + REG_FIFO, ptr, len >> 1);
  scsi_set_resid(cmd, scsi_get_resid(cmd) - len);
  scsi_kunmap_atomic_sg(virt);
 }
}
