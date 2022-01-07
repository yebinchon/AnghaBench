
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct cdns_dphy {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* remove ) (struct cdns_dphy*) ;} ;


 struct cdns_dphy* dev_get_drvdata (int *) ;
 int stub1 (struct cdns_dphy*) ;

__attribute__((used)) static int cdns_dphy_remove(struct platform_device *pdev)
{
 struct cdns_dphy *dphy = dev_get_drvdata(&pdev->dev);

 if (dphy->ops->remove)
  dphy->ops->remove(dphy);

 return 0;
}
