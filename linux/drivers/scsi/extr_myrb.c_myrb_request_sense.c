
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int sense_buffer; } ;
struct myrb_hba {int dummy; } ;


 int NO_SENSE ;
 int SCSI_SENSE_BUFFERSIZE ;
 int scsi_build_sense_buffer (int ,int ,int ,int ,int ) ;
 int scsi_sg_copy_from_buffer (struct scsi_cmnd*,int ,int ) ;

__attribute__((used)) static void myrb_request_sense(struct myrb_hba *cb,
  struct scsi_cmnd *scmd)
{
 scsi_build_sense_buffer(0, scmd->sense_buffer,
    NO_SENSE, 0, 0);
 scsi_sg_copy_from_buffer(scmd, scmd->sense_buffer,
     SCSI_SENSE_BUFFERSIZE);
}
