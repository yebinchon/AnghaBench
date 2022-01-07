
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct phy {int dummy; } ;


 scalar_t__ ISCR_FORCE_VBUS_HIGH ;
 scalar_t__ ISCR_FORCE_VBUS_LOW ;
 int ISCR_FORCE_VBUS_MASK ;
 int sun4i_usb_phy0_update_iscr (struct phy*,int ,scalar_t__) ;

__attribute__((used)) static void sun4i_usb_phy0_set_vbus_detect(struct phy *phy, u32 val)
{
 if (val)
  val = ISCR_FORCE_VBUS_HIGH;
 else
  val = ISCR_FORCE_VBUS_LOW;

 sun4i_usb_phy0_update_iscr(phy, ISCR_FORCE_VBUS_MASK, val);
}
