
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hcd {scalar_t__ state; } ;
struct c67x00_sie {int sie_num; struct c67x00_hcd* private_data; } ;
struct c67x00_hcd {int dummy; } ;


 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 scalar_t__ HC_STATE_HALT ;
 int HUSB_TDListDone ;
 int SOFEOP_FLG (int ) ;
 int SOF_EOP_IRQ_FLG ;
 int c67x00_hcd_dev (struct c67x00_hcd*) ;
 struct usb_hcd* c67x00_hcd_to_hcd (struct c67x00_hcd*) ;
 int c67x00_ll_usb_clear_status (struct c67x00_sie*,int ) ;
 int c67x00_sched_kick (struct c67x00_hcd*) ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void c67x00_hcd_irq(struct c67x00_sie *sie, u16 int_status, u16 msg)
{
 struct c67x00_hcd *c67x00 = sie->private_data;
 struct usb_hcd *hcd = c67x00_hcd_to_hcd(c67x00);


 if (msg) {
  if (msg & HUSB_TDListDone)
   c67x00_sched_kick(c67x00);
  else
   dev_warn(c67x00_hcd_dev(c67x00),
     "Unknown SIE msg flag(s): 0x%04x\n", msg);
 }

 if (unlikely(hcd->state == HC_STATE_HALT))
  return;

 if (!HCD_HW_ACCESSIBLE(hcd))
  return;


 if (int_status & SOFEOP_FLG(sie->sie_num)) {
  c67x00_ll_usb_clear_status(sie, SOF_EOP_IRQ_FLG);
  c67x00_sched_kick(c67x00);
 }
}
