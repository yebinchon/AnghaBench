
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_device {int gadget_driver; } ;
struct cdns3 {struct cdns3_device* gadget_dev; } ;


 int cdns3_gadget_config (struct cdns3_device*) ;

__attribute__((used)) static int cdns3_gadget_resume(struct cdns3 *cdns, bool hibernated)
{
 struct cdns3_device *priv_dev = cdns->gadget_dev;

 if (!priv_dev->gadget_driver)
  return 0;

 cdns3_gadget_config(priv_dev);

 return 0;
}
