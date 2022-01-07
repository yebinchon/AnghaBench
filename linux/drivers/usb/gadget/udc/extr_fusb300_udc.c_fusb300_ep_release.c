
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb300_ep {scalar_t__ wedged; scalar_t__ stall; scalar_t__ epnum; } ;



__attribute__((used)) static int fusb300_ep_release(struct fusb300_ep *ep)
{
 if (!ep->epnum)
  return 0;
 ep->epnum = 0;
 ep->stall = 0;
 ep->wedged = 0;
 return 0;
}
