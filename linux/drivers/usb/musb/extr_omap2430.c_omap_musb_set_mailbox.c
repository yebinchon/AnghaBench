
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_musb_board_data {int interface_type; } ;
struct omap2430_glue {int status; int control_otghs; } ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {TYPE_1__* xceiv; int controller; int gadget_driver; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int last_event; int notifier; TYPE_2__* otg; } ;




 int MUSB_INTERFACE_UTMI ;


 int OTG_STATE_A_IDLE ;
 int OTG_STATE_B_IDLE ;
 int USB_EVENT_ID ;
 int USB_EVENT_NONE ;
 int USB_EVENT_VBUS ;
 int USB_MODE_DEVICE ;
 int USB_MODE_DISCONNECT ;
 int USB_MODE_HOST ;
 int atomic_notifier_call_chain (int *,int ,int *) ;
 int dev_dbg (int ,char*) ;
 struct musb_hdrc_platform_data* dev_get_platdata (int ) ;
 struct musb* glue_to_musb (struct omap2430_glue*) ;
 int omap2430_musb_set_vbus (struct musb*,int) ;
 int omap_control_usb_set_mode (int ,int ) ;
 int otg_set_vbus (TYPE_2__*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static void omap_musb_set_mailbox(struct omap2430_glue *glue)
{
 struct musb *musb = glue_to_musb(glue);
 struct musb_hdrc_platform_data *pdata =
  dev_get_platdata(musb->controller);
 struct omap_musb_board_data *data = pdata->board_data;

 pm_runtime_get_sync(musb->controller);
 switch (glue->status) {
 case 130:
  dev_dbg(musb->controller, "ID GND\n");

  musb->xceiv->otg->state = OTG_STATE_A_IDLE;
  musb->xceiv->last_event = USB_EVENT_ID;
  if (musb->gadget_driver) {
   omap_control_usb_set_mode(glue->control_otghs,
    USB_MODE_HOST);
   omap2430_musb_set_vbus(musb, 1);
  }
  break;

 case 128:
  dev_dbg(musb->controller, "VBUS Connect\n");

  musb->xceiv->otg->state = OTG_STATE_B_IDLE;
  musb->xceiv->last_event = USB_EVENT_VBUS;
  omap_control_usb_set_mode(glue->control_otghs, USB_MODE_DEVICE);
  break;

 case 131:
 case 129:
  dev_dbg(musb->controller, "VBUS Disconnect\n");

  musb->xceiv->last_event = USB_EVENT_NONE;
  if (musb->gadget_driver)
   omap2430_musb_set_vbus(musb, 0);

  if (data->interface_type == MUSB_INTERFACE_UTMI)
   otg_set_vbus(musb->xceiv->otg, 0);

  omap_control_usb_set_mode(glue->control_otghs,
   USB_MODE_DISCONNECT);
  break;
 default:
  dev_dbg(musb->controller, "ID float\n");
 }
 pm_runtime_mark_last_busy(musb->controller);
 pm_runtime_put_autosuspend(musb->controller);
 atomic_notifier_call_chain(&musb->xceiv->notifier,
   musb->xceiv->last_event, ((void*)0));
}
