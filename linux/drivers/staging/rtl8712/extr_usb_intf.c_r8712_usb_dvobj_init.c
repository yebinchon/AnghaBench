
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct usb_interface_descriptor {int bNumEndpoints; } ;
struct usb_host_interface {struct usb_interface_descriptor desc; } ;
struct usb_device {scalar_t__ speed; int dev; } ;
struct dvobj_priv {int ishighspeed; int nr_endpoint; struct _adapter* padapter; struct usb_device* pusbdev; } ;
struct _adapter {int eeprom_address_size; struct dvobj_priv dvobjpriv; } ;
struct TYPE_2__ {struct usb_host_interface* altsetting; } ;


 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int dev_info (int *,char*,int ) ;
 TYPE_1__* pintf ;
 scalar_t__ r8712_alloc_io_queue (struct _adapter*) ;

__attribute__((used)) static uint r8712_usb_dvobj_init(struct _adapter *padapter)
{
 uint status = _SUCCESS;
 struct usb_host_interface *phost_iface;
 struct usb_interface_descriptor *piface_desc;
 struct dvobj_priv *pdvobjpriv = &padapter->dvobjpriv;
 struct usb_device *pusbd = pdvobjpriv->pusbdev;

 pdvobjpriv->padapter = padapter;
 padapter->eeprom_address_size = 6;
 phost_iface = &pintf->altsetting[0];
 piface_desc = &phost_iface->desc;
 pdvobjpriv->nr_endpoint = piface_desc->bNumEndpoints;
 if (pusbd->speed == USB_SPEED_HIGH) {
  pdvobjpriv->ishighspeed = 1;
  dev_info(&pusbd->dev, "r8712u: USB_SPEED_HIGH with %d endpoints\n",
    pdvobjpriv->nr_endpoint);
 } else {
  pdvobjpriv->ishighspeed = 0;
  dev_info(&pusbd->dev, "r8712u: USB_SPEED_LOW with %d endpoints\n",
    pdvobjpriv->nr_endpoint);
 }
 if ((r8712_alloc_io_queue(padapter)) == _FAIL)
  status = _FAIL;
 return status;
}
