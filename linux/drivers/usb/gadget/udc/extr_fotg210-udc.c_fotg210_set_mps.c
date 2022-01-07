
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fotg210_udc {scalar_t__ reg; } ;
struct fotg210_ep {struct fotg210_udc* fotg210; } ;


 scalar_t__ FOTG210_INEPMPSR (scalar_t__) ;
 scalar_t__ FOTG210_OUTEPMPSR (scalar_t__) ;
 scalar_t__ INOUTEPMPSR_MPS (scalar_t__) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fotg210_set_mps(struct fotg210_ep *ep, u32 epnum, u32 mps,
    u32 dir_in)
{
 struct fotg210_udc *fotg210 = ep->fotg210;
 u32 val;
 u32 offset = dir_in ? FOTG210_INEPMPSR(epnum) :
    FOTG210_OUTEPMPSR(epnum);

 val = ioread32(fotg210->reg + offset);
 val |= INOUTEPMPSR_MPS(mps);
 iowrite32(val, fotg210->reg + offset);
}
