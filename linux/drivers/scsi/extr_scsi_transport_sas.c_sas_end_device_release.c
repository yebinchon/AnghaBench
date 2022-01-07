
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {scalar_t__ q; } ;
struct sas_end_device {int dummy; } ;
struct device {int parent; } ;


 int blk_cleanup_queue (scalar_t__) ;
 struct sas_rphy* dev_to_rphy (struct device*) ;
 int kfree (struct sas_end_device*) ;
 int put_device (int ) ;
 struct sas_end_device* rphy_to_end_device (struct sas_rphy*) ;

__attribute__((used)) static void sas_end_device_release(struct device *dev)
{
 struct sas_rphy *rphy = dev_to_rphy(dev);
 struct sas_end_device *edev = rphy_to_end_device(rphy);

 if (rphy->q)
  blk_cleanup_queue(rphy->q);

 put_device(dev->parent);
 kfree(edev);
}
