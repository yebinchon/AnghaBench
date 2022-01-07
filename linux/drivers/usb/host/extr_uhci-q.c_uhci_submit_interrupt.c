
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int interval; } ;
struct uhci_qh {int period; int phase; int bandwidth_reserved; int skel; } ;
struct uhci_hcd {int dummy; } ;


 int EINVAL ;
 int MAX_PHASE ;
 int SKEL_INDEX (int) ;
 int uhci_check_bandwidth (struct uhci_hcd*,struct uhci_qh*) ;
 int uhci_reserve_bandwidth (struct uhci_hcd*,struct uhci_qh*) ;
 int uhci_submit_common (struct uhci_hcd*,struct urb*,struct uhci_qh*) ;

__attribute__((used)) static int uhci_submit_interrupt(struct uhci_hcd *uhci, struct urb *urb,
  struct uhci_qh *qh)
{
 int ret;






 if (!qh->bandwidth_reserved) {
  int exponent;


  for (exponent = 7; exponent >= 0; --exponent) {
   if ((1 << exponent) <= urb->interval)
    break;
  }
  if (exponent < 0)
   return -EINVAL;


  do {
   qh->period = 1 << exponent;
   qh->skel = SKEL_INDEX(exponent);




   qh->phase = (qh->period / 2) & (MAX_PHASE - 1);
   ret = uhci_check_bandwidth(uhci, qh);
  } while (ret != 0 && --exponent >= 0);
  if (ret)
   return ret;
 } else if (qh->period > urb->interval)
  return -EINVAL;

 ret = uhci_submit_common(uhci, urb, qh);
 if (ret == 0) {
  urb->interval = qh->period;
  if (!qh->bandwidth_reserved)
   uhci_reserve_bandwidth(uhci, qh);
 }
 return ret;
}
