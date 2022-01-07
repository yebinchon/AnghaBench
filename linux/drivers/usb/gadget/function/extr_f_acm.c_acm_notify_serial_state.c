
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_composite_dev {TYPE_1__* gadget; } ;
struct TYPE_7__ {TYPE_2__* config; } ;
struct TYPE_8__ {TYPE_3__ func; } ;
struct f_acm {int pending; int lock; int serial_state; int port_num; scalar_t__ notify_req; TYPE_4__ port; } ;
typedef int __le16 ;
struct TYPE_6__ {struct usb_composite_dev* cdev; } ;
struct TYPE_5__ {int dev; } ;


 int USB_CDC_NOTIFY_SERIAL_STATE ;
 int acm_cdc_notify (struct f_acm*,int ,int ,int *,int) ;
 int cpu_to_le16 (int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int acm_notify_serial_state(struct f_acm *acm)
{
 struct usb_composite_dev *cdev = acm->port.func.config->cdev;
 int status;
 __le16 serial_state;

 spin_lock(&acm->lock);
 if (acm->notify_req) {
  dev_dbg(&cdev->gadget->dev, "acm ttyGS%d serial state %04x\n",
   acm->port_num, acm->serial_state);
  serial_state = cpu_to_le16(acm->serial_state);
  status = acm_cdc_notify(acm, USB_CDC_NOTIFY_SERIAL_STATE,
    0, &serial_state, sizeof(acm->serial_state));
 } else {
  acm->pending = 1;
  status = 0;
 }
 spin_unlock(&acm->lock);
 return status;
}
