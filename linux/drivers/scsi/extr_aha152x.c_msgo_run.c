
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int phase; } ;
struct TYPE_4__ {TYPE_1__ SCp; } ;


 int ABORT ;
 int BUS_DEVICE_RESET ;
 int CLRATNO ;
 TYPE_2__* CURRENT_SC ;
 int IDENTIFY_BASE ;
 int MSGO (int) ;
 int MSGOLEN ;
 int MSGO_I ;
 int SCSIDAT ;
 int SETPORT (int ,int) ;
 int SPIORDY ;
 int SSTAT0 ;
 int SSTAT1 ;
 scalar_t__ TESTLO (int ,int ) ;
 int aborted ;
 int identified ;
 int resetted ;

__attribute__((used)) static void msgo_run(struct Scsi_Host *shpnt)
{
 while(MSGO_I<MSGOLEN) {
  if (TESTLO(SSTAT0, SPIORDY))
   return;

  if (MSGO_I==MSGOLEN-1) {

   SETPORT(SSTAT1, CLRATNO);
  }


  if (MSGO(MSGO_I) & IDENTIFY_BASE)
   CURRENT_SC->SCp.phase |= identified;

  if (MSGO(MSGO_I)==ABORT)
   CURRENT_SC->SCp.phase |= aborted;

  if (MSGO(MSGO_I)==BUS_DEVICE_RESET)
   CURRENT_SC->SCp.phase |= resetted;

  SETPORT(SCSIDAT, MSGO(MSGO_I++));
 }
}
