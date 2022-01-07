
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SCB_ABORT ;
 int ahc_linux_queue_recovery_cmd (struct scsi_cmnd*,int ) ;
 int printk (char*,int) ;

__attribute__((used)) static int
ahc_linux_abort(struct scsi_cmnd *cmd)
{
 int error;

 error = ahc_linux_queue_recovery_cmd(cmd, SCB_ABORT);
 if (error != 0)
  printk("aic7xxx_abort returns 0x%x\n", error);
 return (error);
}
