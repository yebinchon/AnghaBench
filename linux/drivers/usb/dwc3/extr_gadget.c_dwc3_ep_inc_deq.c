
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_ep {int trb_dequeue; } ;


 int dwc3_ep_inc_trb (int *) ;

__attribute__((used)) static void dwc3_ep_inc_deq(struct dwc3_ep *dep)
{
 dwc3_ep_inc_trb(&dep->trb_dequeue);
}
