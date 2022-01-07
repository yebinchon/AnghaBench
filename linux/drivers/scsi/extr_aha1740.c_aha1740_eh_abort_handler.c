
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SUCCESS ;

__attribute__((used)) static int aha1740_eh_abort_handler (struct scsi_cmnd *dummy)
{
 return SUCCESS;
}
