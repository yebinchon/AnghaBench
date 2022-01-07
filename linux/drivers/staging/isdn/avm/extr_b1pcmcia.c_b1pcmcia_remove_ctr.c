
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_5__ {TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_6__ {unsigned int port; int irq; } ;
typedef TYPE_2__ avmcard ;


 int b1_free_card (TYPE_2__*) ;
 int b1_reset (unsigned int) ;
 int detach_capi_ctr (struct capi_ctr*) ;
 int free_irq (int ,TYPE_2__*) ;

__attribute__((used)) static void b1pcmcia_remove_ctr(struct capi_ctr *ctrl)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 unsigned int port = card->port;

 b1_reset(port);
 b1_reset(port);

 detach_capi_ctr(ctrl);
 free_irq(card->irq, card);
 b1_free_card(card);
}
