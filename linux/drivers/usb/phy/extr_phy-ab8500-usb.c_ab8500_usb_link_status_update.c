
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier; TYPE_1__* otg; } ;
struct ab8500_usb {scalar_t__ previous_link_status_state; TYPE_2__ phy; int vbus_draw; int mode; int dev; } ;
typedef enum ux500_musb_vbus_id_status { ____Placeholder_ux500_musb_vbus_id_status } ux500_musb_vbus_id_status ;
typedef enum ab8500_usb_link_status { ____Placeholder_ab8500_usb_link_status } ab8500_usb_link_status ;
struct TYPE_3__ {int default_a; int state; } ;


 int OTG_STATE_B_IDLE ;
 int USB_DEDICATED_CHG ;
 int USB_EVENT_CHARGER ;
 int USB_EVENT_ENUMERATED ;
 int USB_EVENT_NONE ;
 int USB_HOST ;
 int USB_IDLE ;
 int USB_PERIPHERAL ;
 int UX500_MUSB_CHARGER ;
 int UX500_MUSB_ID ;
 int UX500_MUSB_NONE ;
 int UX500_MUSB_PREPARE ;
 int UX500_MUSB_RIDA ;
 int UX500_MUSB_RIDB ;
 int UX500_MUSB_RIDC ;
 int UX500_MUSB_VBUS ;
 int ab8500_usb_host_phy_en (struct ab8500_usb*) ;
 int ab8500_usb_peri_phy_en (struct ab8500_usb*) ;
 int atomic_notifier_call_chain (int *,int,int *) ;
 int dev_dbg (int ,char*,int) ;
 int usb_phy_set_event (TYPE_2__*,int ) ;

__attribute__((used)) static int ab8500_usb_link_status_update(struct ab8500_usb *ab,
  enum ab8500_usb_link_status lsts)
{
 enum ux500_musb_vbus_id_status event = 0;

 dev_dbg(ab->dev, "ab8500_usb_link_status_update %d\n", lsts);





 if (ab->previous_link_status_state == 137 &&
   (lsts == 130 ||
    lsts == 128))
  return 0;

 if (ab->previous_link_status_state == 143 &&
   lsts == 128)
  return 0;

 ab->previous_link_status_state = lsts;

 switch (lsts) {
 case 142:
  event = UX500_MUSB_RIDB;

 case 133:
 case 132:
  ab->mode = USB_IDLE;
  ab->phy.otg->default_a = 0;
  ab->vbus_draw = 0;
  if (event != UX500_MUSB_RIDB)
   event = UX500_MUSB_NONE;

  ab->phy.otg->state = OTG_STATE_B_IDLE;
  usb_phy_set_event(&ab->phy, USB_EVENT_NONE);
  break;

 case 139:
 case 141:
 case 140:
  event = UX500_MUSB_RIDC;

 case 128:
 case 130:
 case 129:
 case 134:
 case 136:
 case 135:
  if (ab->mode == USB_IDLE) {
   ab->mode = USB_PERIPHERAL;
   ab8500_usb_peri_phy_en(ab);
   atomic_notifier_call_chain(&ab->phy.notifier,
     UX500_MUSB_PREPARE, &ab->vbus_draw);
   usb_phy_set_event(&ab->phy, USB_EVENT_ENUMERATED);
  }
  if (event != UX500_MUSB_RIDC)
   event = UX500_MUSB_VBUS;
  break;

 case 143:
  event = UX500_MUSB_RIDA;

 case 137:
  if (ab->mode == USB_IDLE) {
   ab->mode = USB_HOST;
   ab8500_usb_host_phy_en(ab);
   atomic_notifier_call_chain(&ab->phy.notifier,
     UX500_MUSB_PREPARE, &ab->vbus_draw);
  }
  ab->phy.otg->default_a = 1;
  if (event != UX500_MUSB_RIDA)
   event = UX500_MUSB_ID;
  atomic_notifier_call_chain(&ab->phy.notifier,
    event, &ab->vbus_draw);
  break;

 case 138:
  ab->mode = USB_DEDICATED_CHG;
  event = UX500_MUSB_CHARGER;
  atomic_notifier_call_chain(&ab->phy.notifier,
    event, &ab->vbus_draw);
  usb_phy_set_event(&ab->phy, USB_EVENT_CHARGER);
  break;

 case 131:
  break;
 }

 return 0;
}
