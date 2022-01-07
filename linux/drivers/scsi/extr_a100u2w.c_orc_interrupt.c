
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct orc_scb {int status; } ;
struct orc_host {scalar_t__ scb_virt; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ORC_RQUEUE ;
 scalar_t__ ORC_RQUEUECNT ;
 scalar_t__ inb (scalar_t__) ;
 int inia100_scb_handler (struct orc_host*,struct orc_scb*) ;

__attribute__((used)) static irqreturn_t orc_interrupt(struct orc_host * host)
{
 u8 scb_index;
 struct orc_scb *scb;


 if (inb(host->base + ORC_RQUEUECNT) == 0)
  return IRQ_NONE;

 do {

  scb_index = inb(host->base + ORC_RQUEUE);


  scb = (struct orc_scb *) ((unsigned long) host->scb_virt + (unsigned long) (sizeof(struct orc_scb) * scb_index));
  scb->status = 0x0;

  inia100_scb_handler(host, scb);
 } while (inb(host->base + ORC_RQUEUECNT));
 return IRQ_HANDLED;
}
