
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pnp_dev {struct pnp_card_link* card_link; } ;
struct TYPE_6__ {scalar_t__ event; } ;
struct pnp_card_link {TYPE_1__* driver; TYPE_2__ pm_state; } ;
typedef TYPE_2__ pm_message_t ;
struct TYPE_5__ {int (* suspend ) (struct pnp_card_link*,TYPE_2__) ;} ;


 int stub1 (struct pnp_card_link*,TYPE_2__) ;

__attribute__((used)) static int card_suspend(struct pnp_dev *dev, pm_message_t state)
{
 struct pnp_card_link *link = dev->card_link;

 if (link->pm_state.event == state.event)
  return 0;
 link->pm_state = state;
 return link->driver->suspend(link, state);
}
