
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_request {int length; int zero; scalar_t__ status; TYPE_6__* buf; int * context; } ;
struct usb_qualifier_descriptor {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wIndex; int wLength; int wValue; } ;
struct TYPE_7__ {scalar_t__ speed; struct usb_ctrlrequest setup; } ;
struct usb_gadgetfs_event {TYPE_1__ u; } ;
struct usb_gadget {scalar_t__ speed; int ep0; } ;
struct dev_data {int setup_abort; scalar_t__ state; int current_config; int setup_can_stall; int setup_in; int setup_wLength; int lock; int udc_usage; struct usb_request* req; int setup_out_error; int setup_out_ready; int usermode_setup; TYPE_5__* config; TYPE_4__* hs_config; TYPE_6__* dev; TYPE_3__* gadget; TYPE_6__* rbuf; } ;
struct TYPE_12__ {int bMaxPacketSize0; } ;
struct TYPE_11__ {int bConfigurationValue; int bMaxPower; } ;
struct TYPE_10__ {int bConfigurationValue; int bMaxPower; } ;
struct TYPE_9__ {TYPE_2__* ep0; } ;
struct TYPE_8__ {int maxpacket; } ;


 int DBG (struct dev_data*,char*,int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ERROR (struct dev_data*,char*) ;
 int GADGETFS_CONNECT ;
 int GADGETFS_SETUP ;
 int GFP_KERNEL ;
 int INFO (struct dev_data*,char*,...) ;
 scalar_t__ STATE_DEV_CONNECTED ;
 scalar_t__ STATE_DEV_SETUP ;
 scalar_t__ STATE_DEV_UNCONNECTED ;
 int USB_DIR_IN ;
 scalar_t__ USB_SPEED_HIGH ;
 int USB_STATE_CONFIGURED ;
 int VDEBUG (struct dev_data*,char*,char*,int,int,int,int,int) ;
 int clean_req (int ,struct usb_request*) ;
 int config_buf (struct dev_data*,int,int) ;
 int ep0_readable (struct dev_data*) ;
 scalar_t__ gadget_is_dualspeed (struct usb_gadget*) ;
 struct dev_data* get_gadget_data (struct usb_gadget*) ;
 int le16_to_cpu (int ) ;
 int make_qualifier (struct dev_data*) ;
 int min (int,int) ;
 struct usb_gadgetfs_event* next_event (struct dev_data*,int ) ;
 int setup_req (int ,struct usb_request*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlikely (int) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;
 int usb_gadget_set_state (struct usb_gadget*,int ) ;
 int usb_gadget_vbus_draw (struct usb_gadget*,int) ;

__attribute__((used)) static int
gadgetfs_setup (struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
{
 struct dev_data *dev = get_gadget_data (gadget);
 struct usb_request *req = dev->req;
 int value = -EOPNOTSUPP;
 struct usb_gadgetfs_event *event;
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);

 spin_lock (&dev->lock);
 dev->setup_abort = 0;
 if (dev->state == STATE_DEV_UNCONNECTED) {
  if (gadget_is_dualspeed(gadget)
    && gadget->speed == USB_SPEED_HIGH
    && dev->hs_config == ((void*)0)) {
   spin_unlock(&dev->lock);
   ERROR (dev, "no high speed config??\n");
   return -EINVAL;
  }

  dev->state = STATE_DEV_CONNECTED;

  INFO (dev, "connected\n");
  event = next_event (dev, GADGETFS_CONNECT);
  event->u.speed = gadget->speed;
  ep0_readable (dev);






 } else if (dev->state == STATE_DEV_SETUP)
  dev->setup_abort = 1;

 req->buf = dev->rbuf;
 req->context = ((void*)0);
 value = -EOPNOTSUPP;
 switch (ctrl->bRequest) {

 case 129:
  if (ctrl->bRequestType != USB_DIR_IN)
   goto unrecognized;
  switch (w_value >> 8) {

  case 134:
   value = min (w_length, (u16) sizeof *dev->dev);
   dev->dev->bMaxPacketSize0 = dev->gadget->ep0->maxpacket;
   req->buf = dev->dev;
   break;
  case 133:
   if (!dev->hs_config)
    break;
   value = min (w_length, (u16)
    sizeof (struct usb_qualifier_descriptor));
   make_qualifier (dev);
   break;
  case 132:

  case 135:
   value = config_buf (dev,
     w_value >> 8,
     w_value & 0xff);
   if (value >= 0)
    value = min (w_length, (u16) value);
   break;
  case 131:
   goto unrecognized;

  default:
   break;
  }
  break;


 case 128:
  if (ctrl->bRequestType != 0)
   goto unrecognized;
  if (0 == (u8) w_value) {
   value = 0;
   dev->current_config = 0;
   usb_gadget_vbus_draw(gadget, 8 );

  } else {
   u8 config, power;

   if (gadget_is_dualspeed(gadget)
     && gadget->speed == USB_SPEED_HIGH) {
    config = dev->hs_config->bConfigurationValue;
    power = dev->hs_config->bMaxPower;
   } else {
    config = dev->config->bConfigurationValue;
    power = dev->config->bMaxPower;
   }

   if (config == (u8) w_value) {
    value = 0;
    dev->current_config = config;
    usb_gadget_vbus_draw(gadget, 2 * power);
   }
  }
  if (value == 0) {
   INFO (dev, "configuration #%d\n", dev->current_config);
   usb_gadget_set_state(gadget, USB_STATE_CONFIGURED);
   if (dev->usermode_setup) {
    dev->setup_can_stall = 0;
    goto delegate;
   }
  }
  break;



 case 130:
  if (ctrl->bRequestType != 0x80)
   goto unrecognized;
  *(u8 *)req->buf = dev->current_config;
  value = min (w_length, (u16) 1);
  break;


 default:
unrecognized:
  VDEBUG (dev, "%s req%02x.%02x v%04x i%04x l%d\n",
   dev->usermode_setup ? "delegate" : "fail",
   ctrl->bRequestType, ctrl->bRequest,
   w_value, le16_to_cpu(ctrl->wIndex), w_length);


  if (dev->usermode_setup) {
   dev->setup_can_stall = 1;
delegate:
   dev->setup_in = (ctrl->bRequestType & USB_DIR_IN)
      ? 1 : 0;
   dev->setup_wLength = w_length;
   dev->setup_out_ready = 0;
   dev->setup_out_error = 0;


   if (unlikely (!dev->setup_in && w_length)) {
    value = setup_req (gadget->ep0, dev->req,
       w_length);
    if (value < 0)
     break;

    ++dev->udc_usage;
    spin_unlock (&dev->lock);
    value = usb_ep_queue (gadget->ep0, dev->req,
       GFP_KERNEL);
    spin_lock (&dev->lock);
    --dev->udc_usage;
    if (value < 0) {
     clean_req (gadget->ep0, dev->req);
     break;
    }


    dev->setup_can_stall = 0;
   }


   event = next_event (dev, GADGETFS_SETUP);
   event->u.setup = *ctrl;
   ep0_readable (dev);
   spin_unlock (&dev->lock);
   return 0;
  }
 }


 if (value >= 0 && dev->state != STATE_DEV_SETUP) {
  req->length = value;
  req->zero = value < w_length;

  ++dev->udc_usage;
  spin_unlock (&dev->lock);
  value = usb_ep_queue (gadget->ep0, req, GFP_KERNEL);
  spin_lock(&dev->lock);
  --dev->udc_usage;
  spin_unlock(&dev->lock);
  if (value < 0) {
   DBG (dev, "ep_queue --> %d\n", value);
   req->status = 0;
  }
  return value;
 }


 spin_unlock (&dev->lock);
 return value;
}
