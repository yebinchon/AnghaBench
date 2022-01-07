
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_device {int id; } ;
struct device {int dummy; } ;


 int gbphy_id ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct gbphy_device*) ;
 struct gbphy_device* to_gbphy_dev (struct device*) ;

__attribute__((used)) static void gbphy_dev_release(struct device *dev)
{
 struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);

 ida_simple_remove(&gbphy_id, gbphy_dev->id);
 kfree(gbphy_dev);
}
