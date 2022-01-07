
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {TYPE_1__* resource; } ;
struct net2272 {int dummy; } ;
struct TYPE_2__ {int start; } ;


 int kfree (struct net2272*) ;
 int net2272_remove (struct net2272*) ;
 struct net2272* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int
net2272_plat_remove(struct platform_device *pdev)
{
 struct net2272 *dev = platform_get_drvdata(pdev);

 net2272_remove(dev);

 release_mem_region(pdev->resource[0].start,
  resource_size(&pdev->resource[0]));

 kfree(dev);

 return 0;
}
