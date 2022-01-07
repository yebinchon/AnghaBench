
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb300_ep {scalar_t__ epnum; struct fusb300* fusb300; } ;
struct fusb300 {int dummy; } ;


 int EINVAL ;
 int FUSB300_IGER0_EEPn_FIFO_INT (scalar_t__) ;
 int FUSB300_OFFSET_IGER0 ;
 int fusb300_enable_bit (struct fusb300*,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int enable_fifo_int(struct fusb300_ep *ep)
{
 struct fusb300 *fusb300 = ep->fusb300;

 if (ep->epnum) {
  fusb300_enable_bit(fusb300, FUSB300_OFFSET_IGER0,
   FUSB300_IGER0_EEPn_FIFO_INT(ep->epnum));
 } else {
  pr_err("can't enable_fifo_int ep0\n");
  return -EINVAL;
 }

 return 0;
}
