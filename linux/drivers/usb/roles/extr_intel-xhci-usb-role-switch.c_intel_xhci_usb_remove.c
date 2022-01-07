
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_xhci_usb_data {int role_sw; } ;


 int fwnode_handle_put (int ) ;
 int intel_xhci_usb_node ;
 struct intel_xhci_usb_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int software_node_fwnode (int *) ;
 int usb_role_switch_unregister (int ) ;

__attribute__((used)) static int intel_xhci_usb_remove(struct platform_device *pdev)
{
 struct intel_xhci_usb_data *data = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 usb_role_switch_unregister(data->role_sw);
 fwnode_handle_put(software_node_fwnode(&intel_xhci_usb_node));

 return 0;
}
