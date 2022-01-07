
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct usb_interface {int usb_dev; } ;
struct tty_dev {struct mux_dev* priv_dev; } ;
struct mux_dev {scalar_t__ usb_state; int rx_cb; } ;


 scalar_t__ MAX_ISSUE_NUM ;
 scalar_t__ PM_NORMAL ;
 scalar_t__ PM_SUSPEND ;
 int dev_err (int ,char*) ;
 int gdm_mux_recv (struct mux_dev*,int ) ;
 struct tty_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int gdm_mux_resume(struct usb_interface *intf)
{
 struct tty_dev *tty_dev;
 struct mux_dev *mux_dev;
 u8 i;

 tty_dev = usb_get_intfdata(intf);
 mux_dev = tty_dev->priv_dev;

 if (mux_dev->usb_state != PM_SUSPEND) {
  dev_err(intf->usb_dev, "usb resume - invalid state\n");
  return -1;
 }

 mux_dev->usb_state = PM_NORMAL;

 for (i = 0; i < MAX_ISSUE_NUM; i++)
  gdm_mux_recv(mux_dev, mux_dev->rx_cb);

 return 0;
}
