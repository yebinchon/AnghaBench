
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_9__ {scalar_t__ service; scalar_t__ in_intr; int * time; int * count_trans; int * count; } ;
struct TYPE_6__ {int phase; } ;
struct TYPE_8__ {TYPE_1__ SCp; } ;
struct TYPE_7__ {int (* run ) (struct Scsi_Host*) ;int (* init ) (struct Scsi_Host*) ;scalar_t__ spio; int (* end ) (struct Scsi_Host*) ;} ;


 int CH1 ;
 TYPE_3__* CURRENT_SC ;
 int DMACNTRL0 ;
 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 int GETPORT (int ) ;
 TYPE_4__* HOSTDATA (struct Scsi_Host*) ;
 int INTEN ;
 int KERN_ERR ;
 int PHASECHG ;
 size_t PREVSTATE ;
 int P_MASK ;
 int REQINIT ;
 int SCSISIG ;
 int SETBITS (int ,int ) ;
 int SETPORT (int ,int) ;
 int SPIOEN ;
 int SSTAT0 ;
 int SSTAT1 ;
 size_t STATE ;
 int SXFRCTL0 ;
 int aha152x_error (struct Scsi_Host*,char*) ;
 unsigned long jiffies ;
 int scmd_printk (int ,TYPE_3__*,char*,size_t) ;
 int setup_expected_interrupts (struct Scsi_Host*) ;
 int spiordy ;
 TYPE_2__* states ;
 int stub1 (struct Scsi_Host*) ;
 int stub2 (struct Scsi_Host*) ;
 int stub3 (struct Scsi_Host*) ;
 int update_state (struct Scsi_Host*) ;

__attribute__((used)) static void is_complete(struct Scsi_Host *shpnt)
{
 int dataphase;
 unsigned long flags;
 int pending;

 if(!shpnt)
  return;

 DO_LOCK(flags);

 if( HOSTDATA(shpnt)->service==0 ) {
  DO_UNLOCK(flags);
  return;
 }

 HOSTDATA(shpnt)->service = 0;

 if(HOSTDATA(shpnt)->in_intr) {
  DO_UNLOCK(flags);

  aha152x_error(shpnt, "bottom-half already running!?");
 }
 HOSTDATA(shpnt)->in_intr++;





 do {
  unsigned long start = jiffies;
  DO_UNLOCK(flags);

  dataphase=update_state(shpnt);





  if(PREVSTATE!=STATE && states[PREVSTATE].end)
   states[PREVSTATE].end(shpnt);






  if(states[PREVSTATE].spio && !states[STATE].spio) {
   SETPORT(SXFRCTL0, CH1);
   SETPORT(DMACNTRL0, 0);
   if(CURRENT_SC)
    CURRENT_SC->SCp.phase &= ~spiordy;
  }





  if(dataphase) {
   SETPORT(SSTAT0, REQINIT);
   SETPORT(SCSISIG, GETPORT(SCSISIG) & P_MASK);
   SETPORT(SSTAT1, PHASECHG);
  }






  if(!states[PREVSTATE].spio && states[STATE].spio) {
   SETPORT(DMACNTRL0, 0);
   SETPORT(SXFRCTL0, CH1|SPIOEN);
   if(CURRENT_SC)
    CURRENT_SC->SCp.phase |= spiordy;
  }





  if(PREVSTATE!=STATE && states[STATE].init)
   states[STATE].init(shpnt);





  if(states[STATE].run)
   states[STATE].run(shpnt);
  else
   scmd_printk(KERN_ERR, CURRENT_SC,
        "unexpected state (%x)\n", STATE);







  DO_LOCK(flags);
  pending=setup_expected_interrupts(shpnt);







 } while(pending);





 HOSTDATA(shpnt)->in_intr--;
 SETBITS(DMACNTRL0, INTEN);
 DO_UNLOCK(flags);
}
