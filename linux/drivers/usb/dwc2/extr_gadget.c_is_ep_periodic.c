
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {int periodic; } ;



__attribute__((used)) static inline int is_ep_periodic(struct dwc2_hsotg_ep *hs_ep)
{
 return hs_ep->periodic;
}
