
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_maps {unsigned int num_maps; int node; struct pinctrl_map const* maps; } ;
struct pinctrl_map {int type; int name; int ctrl_dev_name; int dev_name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;




 int kfree (struct pinctrl_maps*) ;
 struct pinctrl_map const* kmemdup (struct pinctrl_map const*,int,int ) ;
 struct pinctrl_maps* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pinconf_validate_map (struct pinctrl_map const*,int) ;
 int pinctrl_maps ;
 int pinctrl_maps_mutex ;
 int pinmux_validate_map (struct pinctrl_map const*,int) ;
 int pr_debug (char*,unsigned int) ;
 int pr_err (char*,int,...) ;

int pinctrl_register_map(const struct pinctrl_map *maps, unsigned num_maps,
    bool dup)
{
 int i, ret;
 struct pinctrl_maps *maps_node;

 pr_debug("add %u pinctrl maps\n", num_maps);


 for (i = 0; i < num_maps; i++) {
  if (!maps[i].dev_name) {
   pr_err("failed to register map %s (%d): no device given\n",
          maps[i].name, i);
   return -EINVAL;
  }

  if (!maps[i].name) {
   pr_err("failed to register map %d: no map name given\n",
          i);
   return -EINVAL;
  }

  if (maps[i].type != 129 &&
    !maps[i].ctrl_dev_name) {
   pr_err("failed to register map %s (%d): no pin control device given\n",
          maps[i].name, i);
   return -EINVAL;
  }

  switch (maps[i].type) {
  case 129:
   break;
  case 128:
   ret = pinmux_validate_map(&maps[i], i);
   if (ret < 0)
    return ret;
   break;
  case 130:
  case 131:
   ret = pinconf_validate_map(&maps[i], i);
   if (ret < 0)
    return ret;
   break;
  default:
   pr_err("failed to register map %s (%d): invalid type given\n",
          maps[i].name, i);
   return -EINVAL;
  }
 }

 maps_node = kzalloc(sizeof(*maps_node), GFP_KERNEL);
 if (!maps_node)
  return -ENOMEM;

 maps_node->num_maps = num_maps;
 if (dup) {
  maps_node->maps = kmemdup(maps, sizeof(*maps) * num_maps,
       GFP_KERNEL);
  if (!maps_node->maps) {
   kfree(maps_node);
   return -ENOMEM;
  }
 } else {
  maps_node->maps = maps;
 }

 mutex_lock(&pinctrl_maps_mutex);
 list_add_tail(&maps_node->node, &pinctrl_maps);
 mutex_unlock(&pinctrl_maps_mutex);

 return 0;
}
