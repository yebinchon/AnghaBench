
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct tty_struct {int dummy; } ;
struct acm {int disconnected; int rx_buflimit; int port; struct usb_interface* control; struct usb_interface* data; int combined_interfaces; int notification_buffer; int ctrl_dma; int ctrl_buffer; int ctrlsize; int dev; int * read_urbs; TYPE_1__* wb; int ctrlurb; int minor; int work; int mutex; int wioctl; scalar_t__ country_codes; } ;
struct TYPE_2__ {int urb; } ;


 int ACM_NW ;
 int acm_driver ;
 int acm_kill_urbs (struct acm*) ;
 int acm_read_buffers_free (struct acm*) ;
 int acm_tty_driver ;
 int acm_write_buffers_free (struct acm*) ;
 int cancel_work_sync (int *) ;
 int dev_attr_bmCapabilities ;
 int dev_attr_iCountryCodeRelDate ;
 int dev_attr_wCountryCodes ;
 int device_remove_file (int *,int *) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_put (int *) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_unregister_device (int ,int ) ;
 int tty_vhangup (struct tty_struct*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct acm* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void acm_disconnect(struct usb_interface *intf)
{
 struct acm *acm = usb_get_intfdata(intf);
 struct tty_struct *tty;
 int i;


 if (!acm)
  return;

 mutex_lock(&acm->mutex);
 acm->disconnected = 1;
 if (acm->country_codes) {
  device_remove_file(&acm->control->dev,
    &dev_attr_wCountryCodes);
  device_remove_file(&acm->control->dev,
    &dev_attr_iCountryCodeRelDate);
 }
 wake_up_all(&acm->wioctl);
 device_remove_file(&acm->control->dev, &dev_attr_bmCapabilities);
 usb_set_intfdata(acm->control, ((void*)0));
 usb_set_intfdata(acm->data, ((void*)0));
 mutex_unlock(&acm->mutex);

 tty = tty_port_tty_get(&acm->port);
 if (tty) {
  tty_vhangup(tty);
  tty_kref_put(tty);
 }

 acm_kill_urbs(acm);
 cancel_work_sync(&acm->work);

 tty_unregister_device(acm_tty_driver, acm->minor);

 usb_free_urb(acm->ctrlurb);
 for (i = 0; i < ACM_NW; i++)
  usb_free_urb(acm->wb[i].urb);
 for (i = 0; i < acm->rx_buflimit; i++)
  usb_free_urb(acm->read_urbs[i]);
 acm_write_buffers_free(acm);
 usb_free_coherent(acm->dev, acm->ctrlsize, acm->ctrl_buffer, acm->ctrl_dma);
 acm_read_buffers_free(acm);

 kfree(acm->notification_buffer);

 if (!acm->combined_interfaces)
  usb_driver_release_interface(&acm_driver, intf == acm->control ?
     acm->data : acm->control);

 tty_port_put(&acm->port);
}
