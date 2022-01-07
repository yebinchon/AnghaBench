
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int clk_stop_timeout; } ;
struct sdw_slave {TYPE_3__ prop; TYPE_2__* bus; TYPE_1__* ops; } ;
struct sdw_driver {int (* probe ) (struct sdw_slave*,struct sdw_device_id const*) ;int name; TYPE_1__* ops; } ;
struct sdw_device_id {int dummy; } ;
struct device {int driver; } ;
struct TYPE_5__ {int clk_stop_timeout; } ;
struct TYPE_4__ {int (* read_prop ) (struct sdw_slave*) ;} ;


 int ENODEV ;
 int dev_err (struct device*,char*,int ,int) ;
 int dev_pm_domain_attach (struct device*,int) ;
 int dev_pm_domain_detach (struct device*,int) ;
 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 struct sdw_driver* drv_to_sdw_driver (int ) ;
 int max_t (int ,int ,int) ;
 struct sdw_device_id* sdw_get_device_id (struct sdw_slave*,struct sdw_driver*) ;
 int stub1 (struct sdw_slave*,struct sdw_device_id const*) ;
 int stub2 (struct sdw_slave*) ;
 int u32 ;

__attribute__((used)) static int sdw_drv_probe(struct device *dev)
{
 struct sdw_slave *slave = dev_to_sdw_dev(dev);
 struct sdw_driver *drv = drv_to_sdw_driver(dev->driver);
 const struct sdw_device_id *id;
 int ret;

 id = sdw_get_device_id(slave, drv);
 if (!id)
  return -ENODEV;

 slave->ops = drv->ops;




 ret = dev_pm_domain_attach(dev, 0);
 if (ret)
  return ret;

 ret = drv->probe(slave, id);
 if (ret) {
  dev_err(dev, "Probe of %s failed: %d\n", drv->name, ret);
  dev_pm_domain_detach(dev, 0);
  return ret;
 }


 if (slave->ops && slave->ops->read_prop)
  slave->ops->read_prop(slave);







 if (slave->prop.clk_stop_timeout == 0)
  slave->prop.clk_stop_timeout = 300;

 slave->bus->clk_stop_timeout = max_t(u32, slave->bus->clk_stop_timeout,
          slave->prop.clk_stop_timeout);

 return 0;
}
