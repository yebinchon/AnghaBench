
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pinctrl_ops {int (* dt_node_to_map ) (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,unsigned int*) ;} ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dev; TYPE_1__* desc; } ;
struct pinctrl {TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_5__ {struct pinctrl_ops* pctlops; } ;


 int CONFIG_MODULES ;
 int ENODEV ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_err (TYPE_2__*,char*,int ) ;
 int dev_name (int ) ;
 int driver_deferred_probe_check_state (TYPE_2__*) ;
 int driver_deferred_probe_check_state_continue (TYPE_2__*) ;
 int dt_remember_or_free_map (struct pinctrl*,char const*,struct pinctrl_dev*,struct pinctrl_map*,unsigned int) ;
 struct pinctrl_dev* get_pinctrl_dev_from_of_node (struct device_node*) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_node_get (struct device_node*) ;
 scalar_t__ of_node_is_root (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int stub1 (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,unsigned int*) ;

__attribute__((used)) static int dt_to_map_one_config(struct pinctrl *p,
    struct pinctrl_dev *hog_pctldev,
    const char *statename,
    struct device_node *np_config)
{
 struct pinctrl_dev *pctldev = ((void*)0);
 struct device_node *np_pctldev;
 const struct pinctrl_ops *ops;
 int ret;
 struct pinctrl_map *map;
 unsigned num_maps;
 bool allow_default = 0;


 np_pctldev = of_node_get(np_config);
 for (;;) {
  if (!allow_default)
   allow_default = of_property_read_bool(np_pctldev,
             "pinctrl-use-default");

  np_pctldev = of_get_next_parent(np_pctldev);
  if (!np_pctldev || of_node_is_root(np_pctldev)) {
   of_node_put(np_pctldev);

   if (IS_ENABLED(CONFIG_MODULES) && !allow_default)
    return driver_deferred_probe_check_state_continue(p->dev);

   return driver_deferred_probe_check_state(p->dev);
  }

  if (hog_pctldev && (np_pctldev == p->dev->of_node)) {
   pctldev = hog_pctldev;
   break;
  }
  pctldev = get_pinctrl_dev_from_of_node(np_pctldev);
  if (pctldev)
   break;

  if (np_pctldev == p->dev->of_node) {
   of_node_put(np_pctldev);
   return -ENODEV;
  }
 }
 of_node_put(np_pctldev);





 ops = pctldev->desc->pctlops;
 if (!ops->dt_node_to_map) {
  dev_err(p->dev, "pctldev %s doesn't support DT\n",
   dev_name(pctldev->dev));
  return -ENODEV;
 }
 ret = ops->dt_node_to_map(pctldev, np_config, &map, &num_maps);
 if (ret < 0)
  return ret;


 return dt_remember_or_free_map(p, statename, pctldev, map, num_maps);
}
