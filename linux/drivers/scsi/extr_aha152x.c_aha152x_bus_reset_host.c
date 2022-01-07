
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ commands; } ;


 int DELAY ;
 int DISCONNECTED_SC ;
 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 TYPE_1__* HOSTDATA (struct Scsi_Host*) ;
 int ISSUE_SC ;
 int PORTA ;
 int SCSIRSTO ;
 int SCSISEQ ;
 int SETPORT (int ,int ) ;
 int SUCCESS ;
 int free_hard_reset_SCs (struct Scsi_Host*,int *) ;
 int mdelay (int) ;
 int setup_expected_interrupts (struct Scsi_Host*) ;

__attribute__((used)) static int aha152x_bus_reset_host(struct Scsi_Host *shpnt)
{
 unsigned long flags;

 DO_LOCK(flags);

 free_hard_reset_SCs(shpnt, &ISSUE_SC);
 free_hard_reset_SCs(shpnt, &DISCONNECTED_SC);

 SETPORT(SCSISEQ, SCSIRSTO);
 mdelay(256);
 SETPORT(SCSISEQ, 0);
 mdelay(DELAY);

 setup_expected_interrupts(shpnt);
 if(HOSTDATA(shpnt)->commands==0)
  SETPORT(PORTA, 0);

 DO_UNLOCK(flags);

 return SUCCESS;
}
