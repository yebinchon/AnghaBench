
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int service; } ;


 int CLRBITS (int ,int ) ;
 int DMACNTRL0 ;
 int DMASTAT ;
 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 unsigned char GETPORT (int ) ;
 TYPE_1__* HOSTDATA (struct Scsi_Host*) ;
 int INIT_WORK (int *,int ) ;
 int INTEN ;
 int INTSTAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REV ;
 scalar_t__ TESTLO (int ,int ) ;
 int aha152x_tq ;
 int run ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t intr(int irqno, void *dev_id)
{
 struct Scsi_Host *shpnt = dev_id;
 unsigned long flags;
 unsigned char rev, dmacntrl0;
 rev = GETPORT(REV);
 dmacntrl0 = GETPORT(DMACNTRL0);
 if ((rev == 0xFF) && (dmacntrl0 == 0xFF))
  return IRQ_NONE;

 if( TESTLO(DMASTAT, INTSTAT) )
  return IRQ_NONE;



 CLRBITS(DMACNTRL0, INTEN);

 DO_LOCK(flags);
 if( HOSTDATA(shpnt)->service==0 ) {
  HOSTDATA(shpnt)->service=1;


  INIT_WORK(&aha152x_tq, run);
  schedule_work(&aha152x_tq);
 }
 DO_UNLOCK(flags);

 return IRQ_HANDLED;
}
