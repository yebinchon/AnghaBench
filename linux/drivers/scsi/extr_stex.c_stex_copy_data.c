
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_msg {scalar_t__ scsi_status; int variable; } ;
struct st_ccb {int * cmd; int sense_bufflen; int * sense_buffer; } ;


 scalar_t__ SAM_STAT_GOOD ;
 int memcpy (int *,int ,int ) ;
 int min (unsigned int,int ) ;
 int scsi_sg_copy_from_buffer (int *,int ,unsigned int) ;

__attribute__((used)) static void stex_copy_data(struct st_ccb *ccb,
 struct status_msg *resp, unsigned int variable)
{
 if (resp->scsi_status != SAM_STAT_GOOD) {
  if (ccb->sense_buffer != ((void*)0))
   memcpy(ccb->sense_buffer, resp->variable,
    min(variable, ccb->sense_bufflen));
  return;
 }

 if (ccb->cmd == ((void*)0))
  return;
 scsi_sg_copy_from_buffer(ccb->cmd, resp->variable, variable);
}
