
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_adapter {scalar_t__ intr_mode; TYPE_1__* pcid; int flags2; int name; } ;
struct TYPE_2__ {int irq; } ;


 int AF2_IRQ_CLAIMED ;
 int ESAS2R_LOG_CRIT ;
 int ESAS2R_LOG_INFO ;
 scalar_t__ INTR_MODE_LEGACY ;
 unsigned long IRQF_SHARED ;
 int esas2r_interrupt ;
 int esas2r_log (int ,char*,int ,...) ;
 int esas2r_msi_interrupt ;
 scalar_t__ request_irq (int ,int ,unsigned long,int ,struct esas2r_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void esas2r_claim_interrupts(struct esas2r_adapter *a)
{
 unsigned long flags = 0;

 if (a->intr_mode == INTR_MODE_LEGACY)
  flags |= IRQF_SHARED;

 esas2r_log(ESAS2R_LOG_INFO,
     "esas2r_claim_interrupts irq=%d (%p, %s, %lx)",
     a->pcid->irq, a, a->name, flags);

 if (request_irq(a->pcid->irq,
   (a->intr_mode ==
    INTR_MODE_LEGACY) ? esas2r_interrupt :
   esas2r_msi_interrupt,
   flags,
   a->name,
   a)) {
  esas2r_log(ESAS2R_LOG_CRIT, "unable to request IRQ %02X",
      a->pcid->irq);
  return;
 }

 set_bit(AF2_IRQ_CLAIMED, &a->flags2);
 esas2r_log(ESAS2R_LOG_INFO,
     "claimed IRQ %d flags: 0x%lx",
     a->pcid->irq, flags);
}
