
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cdns3_device {scalar_t__ selected_ep; TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_sel; } ;


 int writel (scalar_t__,int *) ;

void cdns3_select_ep(struct cdns3_device *priv_dev, u32 ep)
{
 if (priv_dev->selected_ep == ep)
  return;

 priv_dev->selected_ep = ep;
 writel(ep, &priv_dev->regs->ep_sel);
}
