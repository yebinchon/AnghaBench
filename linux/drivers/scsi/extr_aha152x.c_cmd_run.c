
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ cmd_len; int * cmnd; } ;


 scalar_t__ CMD_I ;
 TYPE_1__* CURRENT_SC ;
 int SCSIDAT ;
 int SETPORT (int ,int ) ;
 int SPIORDY ;
 int SSTAT0 ;
 scalar_t__ TESTLO (int ,int ) ;

__attribute__((used)) static void cmd_run(struct Scsi_Host *shpnt)
{
 while(CMD_I<CURRENT_SC->cmd_len) {
  if (TESTLO(SSTAT0, SPIORDY))
   return;

  SETPORT(SCSIDAT, CURRENT_SC->cmnd[CMD_I++]);
 }
}
