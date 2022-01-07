
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union fotg210_shadow {TYPE_2__* qh; TYPE_1__* itd; scalar_t__ ptr; } ;
typedef int u32 ;
struct usb_device {int dummy; } ;
struct fotg210_qh_hw {int hw_next; int hw_info2; } ;
struct fotg210_hcd {unsigned int periodic_size; int * periodic; union fotg210_shadow* pshadow; } ;
typedef int __hc32 ;
struct TYPE_4__ {union fotg210_shadow qh_next; int dev; struct fotg210_qh_hw* hw; } ;
struct TYPE_3__ {union fotg210_shadow itd_next; int hw_next; } ;


 int Q_NEXT_TYPE (struct fotg210_hcd*,int ) ;


 int fotg210_dbg (struct fotg210_hcd*,char*,unsigned int,int ) ;
 int hc32_to_cpu (struct fotg210_hcd*,int ) ;
 int same_tt (struct usb_device*,int ) ;

__attribute__((used)) static int tt_no_collision(struct fotg210_hcd *fotg210, unsigned period,
  struct usb_device *dev, unsigned frame, u32 uf_mask)
{
 if (period == 0)
  return 0;





 for (; frame < fotg210->periodic_size; frame += period) {
  union fotg210_shadow here;
  __hc32 type;
  struct fotg210_qh_hw *hw;

  here = fotg210->pshadow[frame];
  type = Q_NEXT_TYPE(fotg210, fotg210->periodic[frame]);
  while (here.ptr) {
   switch (hc32_to_cpu(fotg210, type)) {
   case 129:
    type = Q_NEXT_TYPE(fotg210, here.itd->hw_next);
    here = here.itd->itd_next;
    continue;
   case 128:
    hw = here.qh->hw;
    if (same_tt(dev, here.qh->dev)) {
     u32 mask;

     mask = hc32_to_cpu(fotg210,
       hw->hw_info2);

     mask |= mask >> 8;
     if (mask & uf_mask)
      break;
    }
    type = Q_NEXT_TYPE(fotg210, hw->hw_next);
    here = here.qh->qh_next;
    continue;

   default:
    fotg210_dbg(fotg210,
      "periodic frame %d bogus type %d\n",
      frame, type);
   }


   return 0;
  }
 }


 return 1;
}
