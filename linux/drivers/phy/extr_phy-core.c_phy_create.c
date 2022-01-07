
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct phy_ops {int dummy; } ;
struct TYPE_8__ {int of_node; struct device* parent; int class; } ;
struct phy {int id; TYPE_1__ dev; int * pwr; struct phy_ops const* ops; int mutex; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 struct phy* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct phy*) ;
 struct phy* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int phy_class ;
 int phy_ida ;
 int pm_runtime_enable (TYPE_1__*) ;
 scalar_t__ pm_runtime_enabled (struct device*) ;
 int pm_runtime_no_callbacks (TYPE_1__*) ;
 int put_device (TYPE_1__*) ;
 int * regulator_get_optional (TYPE_1__*,char*) ;

struct phy *phy_create(struct device *dev, struct device_node *node,
         const struct phy_ops *ops)
{
 int ret;
 int id;
 struct phy *phy;

 if (WARN_ON(!dev))
  return ERR_PTR(-EINVAL);

 phy = kzalloc(sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return ERR_PTR(-ENOMEM);

 id = ida_simple_get(&phy_ida, 0, 0, GFP_KERNEL);
 if (id < 0) {
  dev_err(dev, "unable to get id\n");
  ret = id;
  goto free_phy;
 }

 device_initialize(&phy->dev);
 mutex_init(&phy->mutex);

 phy->dev.class = phy_class;
 phy->dev.parent = dev;
 phy->dev.of_node = node ?: dev->of_node;
 phy->id = id;
 phy->ops = ops;

 ret = dev_set_name(&phy->dev, "phy-%s.%d", dev_name(dev), id);
 if (ret)
  goto put_dev;


 phy->pwr = regulator_get_optional(&phy->dev, "phy");
 if (IS_ERR(phy->pwr)) {
  ret = PTR_ERR(phy->pwr);
  if (ret == -EPROBE_DEFER)
   goto put_dev;

  phy->pwr = ((void*)0);
 }

 ret = device_add(&phy->dev);
 if (ret)
  goto put_dev;

 if (pm_runtime_enabled(dev)) {
  pm_runtime_enable(&phy->dev);
  pm_runtime_no_callbacks(&phy->dev);
 }

 return phy;

put_dev:
 put_device(&phy->dev);
 return ERR_PTR(ret);

free_phy:
 kfree(phy);
 return ERR_PTR(ret);
}
