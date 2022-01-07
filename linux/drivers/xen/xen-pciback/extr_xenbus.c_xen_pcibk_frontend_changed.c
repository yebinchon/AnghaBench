
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct xen_pcibk_device {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
 int dev_dbg (int *,char*,...) ;
 struct xen_pcibk_device* dev_get_drvdata (int *) ;
 int device_unregister (int *) ;
 int xen_pcibk_attach (struct xen_pcibk_device*) ;
 int xen_pcibk_disconnect (struct xen_pcibk_device*) ;
 int xen_pcibk_reconfigure (struct xen_pcibk_device*) ;
 int xenbus_dev_is_online (struct xenbus_device*) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void xen_pcibk_frontend_changed(struct xenbus_device *xdev,
         enum xenbus_state fe_state)
{
 struct xen_pcibk_device *pdev = dev_get_drvdata(&xdev->dev);

 dev_dbg(&xdev->dev, "fe state changed %d\n", fe_state);

 switch (fe_state) {
 case 130:
  xen_pcibk_attach(pdev);
  break;

 case 129:
  xen_pcibk_reconfigure(pdev);
  break;

 case 131:



  xenbus_switch_state(xdev, 131);
  break;

 case 132:
  xen_pcibk_disconnect(pdev);
  xenbus_switch_state(xdev, 132);
  break;

 case 133:
  xen_pcibk_disconnect(pdev);
  xenbus_switch_state(xdev, 133);
  if (xenbus_dev_is_online(xdev))
   break;

 case 128:
  dev_dbg(&xdev->dev, "frontend is gone! unregister device\n");
  device_unregister(&xdev->dev);
  break;

 default:
  break;
 }
}
