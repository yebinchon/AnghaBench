
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_u3_drd; } ;
struct ssusb_mtk {int mac_base; TYPE_1__ otg_switch; } ;


 int DC_SESSION ;
 int SOFT_CONN ;
 int U3D_DEVICE_CONTROL ;
 int U3D_POWER_MANAGEMENT ;
 int mtu3_setbits (int ,int ,int ) ;

__attribute__((used)) static void toggle_opstate(struct ssusb_mtk *ssusb)
{
 if (!ssusb->otg_switch.is_u3_drd) {
  mtu3_setbits(ssusb->mac_base, U3D_DEVICE_CONTROL, DC_SESSION);
  mtu3_setbits(ssusb->mac_base, U3D_POWER_MANAGEMENT, SOFT_CONN);
 }
}
