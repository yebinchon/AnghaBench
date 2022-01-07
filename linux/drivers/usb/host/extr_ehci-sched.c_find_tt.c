
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_tt {struct ehci_tt** hcpriv; TYPE_1__* hub; scalar_t__ multi; } ;
struct usb_device {int ttport; int bus; struct usb_tt* tt; } ;
struct ehci_tt {unsigned int tt_port; struct usb_tt* usb_tt; int ps_list; int tt_list; } ;
struct ehci_hcd {int tt_list; } ;
struct TYPE_2__ {int maxchild; } ;


 int ENOMEM ;
 struct ehci_tt* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int bus_to_hcd (int ) ;
 struct ehci_hcd* hcd_to_ehci (int ) ;
 struct ehci_tt** kcalloc (int ,int,int ) ;
 int kfree (struct ehci_tt**) ;
 struct ehci_tt* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct ehci_tt *find_tt(struct usb_device *udev)
{
 struct usb_tt *utt = udev->tt;
 struct ehci_tt *tt, **tt_index, **ptt;
 unsigned port;
 bool allocated_index = 0;

 if (!utt)
  return ((void*)0);






 tt_index = ((void*)0);
 if (utt->multi) {
  tt_index = utt->hcpriv;
  if (!tt_index) {
   tt_index = kcalloc(utt->hub->maxchild,
        sizeof(*tt_index),
        GFP_ATOMIC);
   if (!tt_index)
    return ERR_PTR(-ENOMEM);
   utt->hcpriv = tt_index;
   allocated_index = 1;
  }
  port = udev->ttport - 1;
  ptt = &tt_index[port];
 } else {
  port = 0;
  ptt = (struct ehci_tt **) &utt->hcpriv;
 }

 tt = *ptt;
 if (!tt) {
  struct ehci_hcd *ehci =
    hcd_to_ehci(bus_to_hcd(udev->bus));

  tt = kzalloc(sizeof(*tt), GFP_ATOMIC);
  if (!tt) {
   if (allocated_index) {
    utt->hcpriv = ((void*)0);
    kfree(tt_index);
   }
   return ERR_PTR(-ENOMEM);
  }
  list_add_tail(&tt->tt_list, &ehci->tt_list);
  INIT_LIST_HEAD(&tt->ps_list);
  tt->usb_tt = utt;
  tt->tt_port = port;
  *ptt = tt;
 }

 return tt;
}
