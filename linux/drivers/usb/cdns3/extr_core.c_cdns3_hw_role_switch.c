
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int role; int dev; scalar_t__ role_override; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int cdns3_role_start (struct cdns3*,int) ;
 int cdns3_role_stop (struct cdns3*) ;
 int cdsn3_hw_role_state_machine (struct cdns3*) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,int,...) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

int cdns3_hw_role_switch(struct cdns3 *cdns)
{
 enum usb_role real_role, current_role;
 int ret = 0;


 if (cdns->role_override)
  return 0;

 pm_runtime_get_sync(cdns->dev);

 current_role = cdns->role;
 real_role = cdsn3_hw_role_state_machine(cdns);


 if (current_role == real_role)
  goto exit;

 cdns3_role_stop(cdns);

 dev_dbg(cdns->dev, "Switching role %d -> %d", current_role, real_role);

 ret = cdns3_role_start(cdns, real_role);
 if (ret) {

  dev_err(cdns->dev, "set %d has failed, back to %d\n",
   real_role, current_role);
  ret = cdns3_role_start(cdns, current_role);
  if (ret)
   dev_err(cdns->dev, "back to %d failed too\n",
    current_role);
 }
exit:
 pm_runtime_put_sync(cdns->dev);
 return ret;
}
