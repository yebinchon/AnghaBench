
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_switch_mtk {int role_sw; int vbus_work; int id_work; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;


 int cancel_work_sync (int *) ;
 int usb_role_switch_unregister (int ) ;

void ssusb_otg_switch_exit(struct ssusb_mtk *ssusb)
{
 struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;

 cancel_work_sync(&otg_sx->id_work);
 cancel_work_sync(&otg_sx->vbus_work);
 usb_role_switch_unregister(otg_sx->role_sw);
}
