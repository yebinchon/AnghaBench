
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_switch_mtk {int dummy; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;


 int MTU3_DR_FORCE_DEVICE ;
 int MTU3_DR_FORCE_HOST ;
 int MTU3_ID_FLOAT ;
 int MTU3_ID_GROUND ;
 int MTU3_VBUS_OFF ;
 int MTU3_VBUS_VALID ;
 int ssusb_set_force_mode (struct ssusb_mtk*,int ) ;
 int ssusb_set_mailbox (struct otg_switch_mtk*,int ) ;

void ssusb_mode_switch(struct ssusb_mtk *ssusb, int to_host)
{
 struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;

 if (to_host) {
  ssusb_set_force_mode(ssusb, MTU3_DR_FORCE_HOST);
  ssusb_set_mailbox(otg_sx, MTU3_VBUS_OFF);
  ssusb_set_mailbox(otg_sx, MTU3_ID_GROUND);
 } else {
  ssusb_set_force_mode(ssusb, MTU3_DR_FORCE_DEVICE);
  ssusb_set_mailbox(otg_sx, MTU3_ID_FLOAT);
  ssusb_set_mailbox(otg_sx, MTU3_VBUS_VALID);
 }
}
