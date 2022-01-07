
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int group; int function; } ;
struct TYPE_8__ {unsigned long* configs; int num_configs; int group_or_pin; } ;
struct TYPE_10__ {TYPE_4__ mux; TYPE_3__ configs; } ;
struct pinctrl_map {TYPE_5__ data; int type; } ;
struct pinctrl_dev {int dev; } ;
struct imx_pinctrl_soc_info {int flags; } ;
struct imx_pinctrl {int dev; struct imx_pinctrl_soc_info* info; } ;
struct TYPE_6__ {int config; } ;
struct TYPE_7__ {TYPE_1__ mmio; int scu; } ;
struct imx_pin {TYPE_2__ conf; int pin; } ;
struct group_desc {int num_pins; scalar_t__ data; } ;
struct device_node {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMX_NO_PAD_CTL ;
 int IMX_USE_SCU ;
 int PIN_MAP_TYPE_CONFIGS_PIN ;
 int PIN_MAP_TYPE_MUX_GROUP ;
 int dev_dbg (int ,char*,int ,int ,int) ;
 int dev_err (int ,char*,struct device_node*) ;
 struct group_desc* imx_pinctrl_find_group_by_name (struct pinctrl_dev*,int ) ;
 int kfree (struct pinctrl_map*) ;
 struct pinctrl_map* kmalloc_array (int,int,int ) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pin_get_name (struct pinctrl_dev*,int ) ;
 struct imx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int imx_dt_node_to_map(struct pinctrl_dev *pctldev,
   struct device_node *np,
   struct pinctrl_map **map, unsigned *num_maps)
{
 struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 const struct group_desc *grp;
 struct pinctrl_map *new_map;
 struct device_node *parent;
 struct imx_pin *pin;
 int map_num = 1;
 int i, j;





 grp = imx_pinctrl_find_group_by_name(pctldev, np->name);
 if (!grp) {
  dev_err(ipctl->dev, "unable to find group for node %pOFn\n", np);
  return -EINVAL;
 }

 if (info->flags & IMX_USE_SCU) {
  map_num += grp->num_pins;
 } else {
  for (i = 0; i < grp->num_pins; i++) {
   pin = &((struct imx_pin *)(grp->data))[i];
   if (!(pin->conf.mmio.config & IMX_NO_PAD_CTL))
    map_num++;
  }
 }

 new_map = kmalloc_array(map_num, sizeof(struct pinctrl_map),
    GFP_KERNEL);
 if (!new_map)
  return -ENOMEM;

 *map = new_map;
 *num_maps = map_num;


 parent = of_get_parent(np);
 if (!parent) {
  kfree(new_map);
  return -EINVAL;
 }
 new_map[0].type = PIN_MAP_TYPE_MUX_GROUP;
 new_map[0].data.mux.function = parent->name;
 new_map[0].data.mux.group = np->name;
 of_node_put(parent);


 new_map++;
 for (i = j = 0; i < grp->num_pins; i++) {
  pin = &((struct imx_pin *)(grp->data))[i];





  if (!(info->flags & IMX_USE_SCU) &&
      (pin->conf.mmio.config & IMX_NO_PAD_CTL))
   continue;

  new_map[j].type = PIN_MAP_TYPE_CONFIGS_PIN;
  new_map[j].data.configs.group_or_pin =
     pin_get_name(pctldev, pin->pin);

  if (info->flags & IMX_USE_SCU) {




   new_map[j].data.configs.configs =
     (unsigned long *)&pin->conf.scu;
   new_map[j].data.configs.num_configs = 2;
  } else {
   new_map[j].data.configs.configs =
     &pin->conf.mmio.config;
   new_map[j].data.configs.num_configs = 1;
  }

  j++;
 }

 dev_dbg(pctldev->dev, "maps: function %s group %s num %d\n",
  (*map)->data.mux.function, (*map)->data.mux.group, map_num);

 return 0;
}
