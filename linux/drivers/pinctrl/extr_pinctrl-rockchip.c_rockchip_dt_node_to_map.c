
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rockchip_pinctrl {int dev; } ;
struct rockchip_pin_group {int npins; TYPE_2__* data; int * pins; } ;
struct TYPE_7__ {int group; int function; } ;
struct TYPE_5__ {int num_configs; int configs; int group_or_pin; } ;
struct TYPE_8__ {TYPE_3__ mux; TYPE_1__ configs; } ;
struct pinctrl_map {TYPE_4__ data; int type; } ;
struct pinctrl_dev {int dev; } ;
struct device_node {int name; } ;
struct TYPE_6__ {int nconfigs; int configs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PIN_MAP_TYPE_CONFIGS_PIN ;
 int PIN_MAP_TYPE_MUX_GROUP ;
 int dev_dbg (int ,char*,int ,int ,int) ;
 int dev_err (int ,char*,struct device_node*) ;
 struct pinctrl_map* devm_kcalloc (int ,int,int,int ) ;
 int devm_kfree (int ,struct pinctrl_map*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pin_get_name (struct pinctrl_dev*,int ) ;
 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct rockchip_pin_group* pinctrl_name_to_group (struct rockchip_pinctrl*,int ) ;

__attribute__((used)) static int rockchip_dt_node_to_map(struct pinctrl_dev *pctldev,
     struct device_node *np,
     struct pinctrl_map **map, unsigned *num_maps)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 const struct rockchip_pin_group *grp;
 struct pinctrl_map *new_map;
 struct device_node *parent;
 int map_num = 1;
 int i;





 grp = pinctrl_name_to_group(info, np->name);
 if (!grp) {
  dev_err(info->dev, "unable to find group for node %pOFn\n",
   np);
  return -EINVAL;
 }

 map_num += grp->npins;
 new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
        GFP_KERNEL);
 if (!new_map)
  return -ENOMEM;

 *map = new_map;
 *num_maps = map_num;


 parent = of_get_parent(np);
 if (!parent) {
  devm_kfree(pctldev->dev, new_map);
  return -EINVAL;
 }
 new_map[0].type = PIN_MAP_TYPE_MUX_GROUP;
 new_map[0].data.mux.function = parent->name;
 new_map[0].data.mux.group = np->name;
 of_node_put(parent);


 new_map++;
 for (i = 0; i < grp->npins; i++) {
  new_map[i].type = PIN_MAP_TYPE_CONFIGS_PIN;
  new_map[i].data.configs.group_or_pin =
    pin_get_name(pctldev, grp->pins[i]);
  new_map[i].data.configs.configs = grp->data[i].configs;
  new_map[i].data.configs.num_configs = grp->data[i].nconfigs;
 }

 dev_dbg(pctldev->dev, "maps: function %s group %s num %d\n",
  (*map)->data.mux.function, (*map)->data.mux.group, map_num);

 return 0;
}
