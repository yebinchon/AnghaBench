
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fotg210_udc {scalar_t__ reg; } ;
struct fotg210_ep {struct fotg210_udc* fotg210; } ;


 scalar_t__ FIFOMAP_DIRIN (scalar_t__) ;
 scalar_t__ FIFOMAP_DIROUT (scalar_t__) ;
 scalar_t__ FOTG210_FIFOMAP ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fotg210_set_fifo_dir(struct fotg210_ep *ep, u32 epnum, u32 dir_in)
{
 struct fotg210_udc *fotg210 = ep->fotg210;
 u32 val;

 val = ioread32(fotg210->reg + FOTG210_FIFOMAP);
 val |= (dir_in ? FIFOMAP_DIRIN(epnum - 1) : FIFOMAP_DIROUT(epnum - 1));
 iowrite32(val, fotg210->reg + FOTG210_FIFOMAP);
}
