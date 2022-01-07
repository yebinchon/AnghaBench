
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fotg210_ep {TYPE_1__* fotg210; } ;
struct TYPE_2__ {scalar_t__ reg; } ;


 int DMATFNR_DISDMA ;
 scalar_t__ FOTG210_DMATFNR ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fotg210_disable_dma(struct fotg210_ep *ep)
{
 iowrite32(DMATFNR_DISDMA, ep->fotg210->reg + FOTG210_DMATFNR);
}
