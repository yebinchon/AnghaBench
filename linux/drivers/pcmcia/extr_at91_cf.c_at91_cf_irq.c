
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct at91_cf_socket {unsigned int present; int socket; TYPE_2__* pdev; TYPE_1__* board; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int det_pin; } ;


 int IRQ_HANDLED ;
 int SS_DETECT ;
 unsigned int at91_cf_present (struct at91_cf_socket*) ;
 int dev_dbg (int *,char*,char*) ;
 int gpio_to_irq (int ) ;
 int pcmcia_parse_events (int *,int ) ;

__attribute__((used)) static irqreturn_t at91_cf_irq(int irq, void *_cf)
{
 struct at91_cf_socket *cf = _cf;

 if (irq == gpio_to_irq(cf->board->det_pin)) {
  unsigned present = at91_cf_present(cf);


  if (present != cf->present) {
   cf->present = present;
   dev_dbg(&cf->pdev->dev, "card %s\n",
     present ? "present" : "gone");
   pcmcia_parse_events(&cf->socket, SS_DETECT);
  }
 }

 return IRQ_HANDLED;
}
