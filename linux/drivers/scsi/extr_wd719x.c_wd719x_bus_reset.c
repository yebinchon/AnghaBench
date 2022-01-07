
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int WD719X_CMD_BUSRESET ;
 int wd719x_reset (struct scsi_cmnd*,int ,int ) ;

__attribute__((used)) static int wd719x_bus_reset(struct scsi_cmnd *cmd)
{
 return wd719x_reset(cmd, WD719X_CMD_BUSRESET, 0);
}
