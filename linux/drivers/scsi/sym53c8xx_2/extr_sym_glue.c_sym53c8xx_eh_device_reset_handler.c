
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SYM_EH_DEVICE_RESET ;
 int sym_eh_handler (int ,char*,struct scsi_cmnd*) ;

__attribute__((used)) static int sym53c8xx_eh_device_reset_handler(struct scsi_cmnd *cmd)
{
 return sym_eh_handler(SYM_EH_DEVICE_RESET, "DEVICE RESET", cmd);
}
