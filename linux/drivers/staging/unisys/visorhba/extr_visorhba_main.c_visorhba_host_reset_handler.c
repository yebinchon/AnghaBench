
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SUCCESS ;

__attribute__((used)) static int visorhba_host_reset_handler(struct scsi_cmnd *scsicmd)
{

 return SUCCESS;
}
