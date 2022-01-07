
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdns3 {int role; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 struct cdns3* dev_get_drvdata (struct device*) ;

__attribute__((used)) static enum usb_role cdns3_role_get(struct device *dev)
{
 struct cdns3 *cdns = dev_get_drvdata(dev);

 return cdns->role;
}
