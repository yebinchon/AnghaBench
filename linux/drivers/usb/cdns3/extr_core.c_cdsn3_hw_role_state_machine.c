
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {scalar_t__ dr_mode; int role; int dev; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 scalar_t__ USB_DR_MODE_OTG ;



 int cdns3_get_id (struct cdns3*) ;
 int cdns3_get_vbus (struct cdns3*) ;
 scalar_t__ cdns3_is_device (struct cdns3*) ;
 scalar_t__ cdns3_is_host (struct cdns3*) ;
 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static enum usb_role cdsn3_hw_role_state_machine(struct cdns3 *cdns)
{
 enum usb_role role;
 int id, vbus;

 if (cdns->dr_mode != USB_DR_MODE_OTG)
  goto not_otg;

 id = cdns3_get_id(cdns);
 vbus = cdns3_get_vbus(cdns);







 role = cdns->role;

 switch (role) {
 case 128:




  if (!id)
   role = 129;
  else if (vbus)
   role = 130;
  break;
 case 129:
  if (id)
   role = 128;
  break;
 case 130:
  if (!vbus)
   role = 128;
  break;
 }

 dev_dbg(cdns->dev, "role %d -> %d\n", cdns->role, role);

 return role;

not_otg:
 if (cdns3_is_host(cdns))
  role = 129;
 if (cdns3_is_device(cdns))
  role = 130;

 return role;
}
