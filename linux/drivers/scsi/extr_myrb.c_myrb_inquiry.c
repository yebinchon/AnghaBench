
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct myrb_hba {int bus_width; int * fw_version; int * model_name; } ;


 int memcpy (unsigned char*,int *,int) ;
 int scsi_sg_copy_from_buffer (struct scsi_cmnd*,void*,int) ;

__attribute__((used)) static void myrb_inquiry(struct myrb_hba *cb,
  struct scsi_cmnd *scmd)
{
 unsigned char inq[36] = {
  0x00, 0x00, 0x03, 0x02, 0x20, 0x00, 0x01, 0x00,
  0x4d, 0x59, 0x4c, 0x45, 0x58, 0x20, 0x20, 0x20,
  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
  0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
  0x20, 0x20, 0x20, 0x20,
 };

 if (cb->bus_width > 16)
  inq[7] |= 1 << 6;
 if (cb->bus_width > 8)
  inq[7] |= 1 << 5;
 memcpy(&inq[16], cb->model_name, 16);
 memcpy(&inq[32], cb->fw_version, 1);
 memcpy(&inq[33], &cb->fw_version[2], 2);
 memcpy(&inq[35], &cb->fw_version[7], 1);

 scsi_sg_copy_from_buffer(scmd, (void *)inq, 36);
}
