
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {scalar_t__ max_speed; int dev; scalar_t__ is_u3_ip; } ;


 scalar_t__ USB_SPEED_SUPER ;
 int dev_info (int ,char*,int ,char*) ;
 int mtu3_hs_softconn_set (struct mtu3*,int) ;
 int mtu3_ss_func_set (struct mtu3*,int) ;
 int usb_speed_string (scalar_t__) ;

void mtu3_dev_on_off(struct mtu3 *mtu, int is_on)
{
 if (mtu->is_u3_ip && mtu->max_speed >= USB_SPEED_SUPER)
  mtu3_ss_func_set(mtu, is_on);
 else
  mtu3_hs_softconn_set(mtu, is_on);

 dev_info(mtu->dev, "gadget (%s) pullup D%s\n",
  usb_speed_string(mtu->max_speed), is_on ? "+" : "-");
}
