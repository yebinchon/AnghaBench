
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SCRST ;
 int aha1542_reset (struct scsi_cmnd*,int ) ;

__attribute__((used)) static int aha1542_bus_reset(struct scsi_cmnd *cmd)
{
 return aha1542_reset(cmd, SCRST);
}
