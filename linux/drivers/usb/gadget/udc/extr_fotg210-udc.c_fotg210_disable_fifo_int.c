
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_ep {TYPE_1__* fotg210; scalar_t__ epnum; scalar_t__ dir_in; } ;
struct TYPE_2__ {scalar_t__ reg; } ;


 int DMISGR1_MF_IN_INT (scalar_t__) ;
 int DMISGR1_MF_OUTSPK_INT (scalar_t__) ;
 scalar_t__ FOTG210_DMISGR1 ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fotg210_disable_fifo_int(struct fotg210_ep *ep)
{
 u32 value = ioread32(ep->fotg210->reg + FOTG210_DMISGR1);

 if (ep->dir_in)
  value |= DMISGR1_MF_IN_INT(ep->epnum - 1);
 else
  value |= DMISGR1_MF_OUTSPK_INT(ep->epnum - 1);
 iowrite32(value, ep->fotg210->reg + FOTG210_DMISGR1);
}
