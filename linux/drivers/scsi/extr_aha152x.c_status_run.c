
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int Status; } ;
struct TYPE_4__ {TYPE_1__ SCp; } ;


 TYPE_2__* CURRENT_SC ;
 int GETPORT (int ) ;
 int SCSIDAT ;
 int SPIORDY ;
 int SSTAT0 ;
 scalar_t__ TESTLO (int ,int ) ;

__attribute__((used)) static void status_run(struct Scsi_Host *shpnt)
{
 if (TESTLO(SSTAT0, SPIORDY))
  return;

 CURRENT_SC->SCp.Status = GETPORT(SCSIDAT);

}
