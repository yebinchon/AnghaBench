
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ep_list; } ;
struct net2280 {TYPE_4__ gadget; TYPE_3__* ep; TYPE_1__* regs; } ;
struct TYPE_6__ {int ep_list; } ;
struct TYPE_7__ {int fifo_size; TYPE_2__ ep; } ;
struct TYPE_5__ {int fifoctl; } ;


 int INIT_LIST_HEAD (int *) ;
 int PCI_BASE2_RANGE ;
 int list_add_tail (int *,int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void set_fifo_mode(struct net2280 *dev, int mode)
{

 writel((0xffff << PCI_BASE2_RANGE) | mode, &dev->regs->fifoctl);


 INIT_LIST_HEAD(&dev->gadget.ep_list);
 list_add_tail(&dev->ep[1].ep.ep_list, &dev->gadget.ep_list);
 list_add_tail(&dev->ep[2].ep.ep_list, &dev->gadget.ep_list);
 switch (mode) {
 case 0:
  list_add_tail(&dev->ep[3].ep.ep_list, &dev->gadget.ep_list);
  list_add_tail(&dev->ep[4].ep.ep_list, &dev->gadget.ep_list);
  dev->ep[1].fifo_size = dev->ep[2].fifo_size = 1024;
  break;
 case 1:
  dev->ep[1].fifo_size = dev->ep[2].fifo_size = 2048;
  break;
 case 2:
  list_add_tail(&dev->ep[3].ep.ep_list, &dev->gadget.ep_list);
  dev->ep[1].fifo_size = 2048;
  dev->ep[2].fifo_size = 1024;
  break;
 }

 list_add_tail(&dev->ep[5].ep.ep_list, &dev->gadget.ep_list);
 list_add_tail(&dev->ep[6].ep.ep_list, &dev->gadget.ep_list);
}
