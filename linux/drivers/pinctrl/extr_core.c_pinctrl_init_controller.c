
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int mutex; struct device* dev; int node; int gpio_ranges; int pin_function_tree; int pin_group_tree; int pin_desc_tree; void* driver_data; struct pinctrl_desc* desc; int owner; } ;
struct pinctrl_desc {int npins; int pins; scalar_t__ confops; scalar_t__ pmxops; int owner; int name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct pinctrl_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int kfree (struct pinctrl_dev*) ;
 struct pinctrl_dev* kzalloc (int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int pinconf_check_ops (struct pinctrl_dev*) ;
 int pinctrl_check_ops (struct pinctrl_dev*) ;
 int pinctrl_free_pindescs (struct pinctrl_dev*,int ,int ) ;
 int pinctrl_register_pins (struct pinctrl_dev*,int ,int ) ;
 int pinmux_check_ops (struct pinctrl_dev*) ;

__attribute__((used)) static struct pinctrl_dev *
pinctrl_init_controller(struct pinctrl_desc *pctldesc, struct device *dev,
   void *driver_data)
{
 struct pinctrl_dev *pctldev;
 int ret;

 if (!pctldesc)
  return ERR_PTR(-EINVAL);
 if (!pctldesc->name)
  return ERR_PTR(-EINVAL);

 pctldev = kzalloc(sizeof(*pctldev), GFP_KERNEL);
 if (!pctldev)
  return ERR_PTR(-ENOMEM);


 pctldev->owner = pctldesc->owner;
 pctldev->desc = pctldesc;
 pctldev->driver_data = driver_data;
 INIT_RADIX_TREE(&pctldev->pin_desc_tree, GFP_KERNEL);






 INIT_LIST_HEAD(&pctldev->gpio_ranges);
 INIT_LIST_HEAD(&pctldev->node);
 pctldev->dev = dev;
 mutex_init(&pctldev->mutex);


 ret = pinctrl_check_ops(pctldev);
 if (ret) {
  dev_err(dev, "pinctrl ops lacks necessary functions\n");
  goto out_err;
 }


 if (pctldesc->pmxops) {
  ret = pinmux_check_ops(pctldev);
  if (ret)
   goto out_err;
 }


 if (pctldesc->confops) {
  ret = pinconf_check_ops(pctldev);
  if (ret)
   goto out_err;
 }


 dev_dbg(dev, "try to register %d pins ...\n", pctldesc->npins);
 ret = pinctrl_register_pins(pctldev, pctldesc->pins, pctldesc->npins);
 if (ret) {
  dev_err(dev, "error during pin registration\n");
  pinctrl_free_pindescs(pctldev, pctldesc->pins,
          pctldesc->npins);
  goto out_err;
 }

 return pctldev;

out_err:
 mutex_destroy(&pctldev->mutex);
 kfree(pctldev);
 return ERR_PTR(ret);
}
