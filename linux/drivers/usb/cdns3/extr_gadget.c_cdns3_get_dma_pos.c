
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_endpoint {int trb_pool_dma; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_traddr; } ;


 int TRB_SIZE ;
 int readl (int *) ;

__attribute__((used)) static int cdns3_get_dma_pos(struct cdns3_device *priv_dev,
        struct cdns3_endpoint *priv_ep)
{
 int dma_index;

 dma_index = readl(&priv_dev->regs->ep_traddr) - priv_ep->trb_pool_dma;

 return dma_index / TRB_SIZE;
}
