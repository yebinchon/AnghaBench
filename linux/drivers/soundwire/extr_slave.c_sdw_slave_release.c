
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dummy; } ;
struct device {int dummy; } ;


 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 int kfree (struct sdw_slave*) ;

__attribute__((used)) static void sdw_slave_release(struct device *dev)
{
 struct sdw_slave *slave = dev_to_sdw_dev(dev);

 kfree(slave);
}
