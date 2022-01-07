
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int phase; } ;
struct TYPE_4__ {TYPE_1__ SCp; } ;


 int CLRSELTIMO ;
 TYPE_2__* CURRENT_SC ;
 int DID_ABORT ;
 int DID_BUS_BUSY ;
 int DID_NO_CONNECT ;
 int SCSISEQ ;
 int SELINGO ;
 int SETPORT (int ,int ) ;
 int SSTAT0 ;
 int SSTAT1 ;
 scalar_t__ TESTLO (int ,int ) ;
 int aborted ;
 int done (struct Scsi_Host*,int) ;
 int selecting ;

__attribute__((used)) static void selto_run(struct Scsi_Host *shpnt)
{
 SETPORT(SCSISEQ, 0);
 SETPORT(SSTAT1, CLRSELTIMO);

 if (!CURRENT_SC)
  return;

 CURRENT_SC->SCp.phase &= ~selecting;

 if (CURRENT_SC->SCp.phase & aborted)
  done(shpnt, DID_ABORT << 16);
 else if (TESTLO(SSTAT0, SELINGO))
  done(shpnt, DID_BUS_BUSY << 16);
 else

  done(shpnt, DID_NO_CONNECT << 16);
}
