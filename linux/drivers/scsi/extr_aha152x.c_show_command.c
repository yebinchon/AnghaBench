
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phase; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;


 int KERN_DEBUG ;
 scalar_t__ SCDATA (struct scsi_cmnd*) ;
 int * SCNEXT (struct scsi_cmnd*) ;
 int aborted ;
 int completed ;
 int disconnected ;
 int identified ;
 int not_issued ;
 int resetted ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,int ,char*,char*,char*,char*,char*,char*,char*,char*,char*,int *) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 int selecting ;
 int spiordy ;
 int syncneg ;

__attribute__((used)) static void show_command(struct scsi_cmnd *ptr)
{
 scsi_print_command(ptr);
 scmd_printk(KERN_DEBUG, ptr,
      "request_bufflen=%d; resid=%d; "
      "phase |%s%s%s%s%s%s%s%s%s; next=0x%p",
      scsi_bufflen(ptr), scsi_get_resid(ptr),
      (ptr->SCp.phase & not_issued) ? "not issued|" : "",
      (ptr->SCp.phase & selecting) ? "selecting|" : "",
      (ptr->SCp.phase & identified) ? "identified|" : "",
      (ptr->SCp.phase & disconnected) ? "disconnected|" : "",
      (ptr->SCp.phase & completed) ? "completed|" : "",
      (ptr->SCp.phase & spiordy) ? "spiordy|" : "",
      (ptr->SCp.phase & syncneg) ? "syncneg|" : "",
      (ptr->SCp.phase & aborted) ? "aborted|" : "",
      (ptr->SCp.phase & resetted) ? "resetted|" : "",
      (SCDATA(ptr)) ? SCNEXT(ptr) : ((void*)0));
}
