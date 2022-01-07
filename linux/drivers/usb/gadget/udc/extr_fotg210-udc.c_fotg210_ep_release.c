
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_ep {scalar_t__ epnum; int fotg210; scalar_t__ wedged; scalar_t__ stall; } ;


 int fotg210_reset_tseq (int ,scalar_t__) ;

__attribute__((used)) static int fotg210_ep_release(struct fotg210_ep *ep)
{
 if (!ep->epnum)
  return 0;
 ep->epnum = 0;
 ep->stall = 0;
 ep->wedged = 0;

 fotg210_reset_tseq(ep->fotg210, ep->epnum);

 return 0;
}
