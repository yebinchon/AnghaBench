
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_switch_mtk {scalar_t__ manual_drd_enabled; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;


 int MTU3_DR_FORCE_HOST ;
 int host_ports_num_get (struct ssusb_mtk*) ;
 int ssusb_host_enable (struct ssusb_mtk*) ;
 int ssusb_set_force_mode (struct ssusb_mtk*,int ) ;
 int ssusb_set_vbus (struct otg_switch_mtk*,int) ;

__attribute__((used)) static void ssusb_host_setup(struct ssusb_mtk *ssusb)
{
 struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;

 host_ports_num_get(ssusb);





 ssusb_host_enable(ssusb);

 if (otg_sx->manual_drd_enabled)
  ssusb_set_force_mode(ssusb, MTU3_DR_FORCE_HOST);


 ssusb_set_vbus(&ssusb->otg_switch, 1);
}
