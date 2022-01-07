
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_switch_mtk {scalar_t__ role_sw_used; scalar_t__ manual_drd_enabled; int vbus_work; int id_work; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;


 int INIT_WORK (int *,int ) ;
 int ssusb_dr_debugfs_init (struct ssusb_mtk*) ;
 int ssusb_extcon_register (struct otg_switch_mtk*) ;
 int ssusb_id_work ;
 int ssusb_role_sw_register (struct otg_switch_mtk*) ;
 int ssusb_vbus_work ;

int ssusb_otg_switch_init(struct ssusb_mtk *ssusb)
{
 struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;
 int ret = 0;

 INIT_WORK(&otg_sx->id_work, ssusb_id_work);
 INIT_WORK(&otg_sx->vbus_work, ssusb_vbus_work);

 if (otg_sx->manual_drd_enabled)
  ssusb_dr_debugfs_init(ssusb);
 else if (otg_sx->role_sw_used)
  ret = ssusb_role_sw_register(otg_sx);
 else
  ret = ssusb_extcon_register(otg_sx);

 return ret;
}
