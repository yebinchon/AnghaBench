
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_state {int settings; } ;
struct pinctrl_setting {int type; int node; int dev_name; struct pinctrl_dev* pctldev; } ;
struct pinctrl_map {int type; int dev_name; int ctrl_dev_name; int name; } ;
struct pinctrl_dev {int dummy; } ;
struct pinctrl {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pinctrl_state*) ;


 int PIN_MAP_TYPE_DUMMY_STATE ;

 int PTR_ERR (struct pinctrl_state*) ;
 struct pinctrl_state* create_state (struct pinctrl*,int ) ;
 int dev_info (int ,char*,int ) ;
 struct pinctrl_state* find_state (struct pinctrl*,int ) ;
 struct pinctrl_dev* get_pinctrl_dev_from_devname (int ) ;
 int kfree (struct pinctrl_setting*) ;
 struct pinctrl_setting* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pinconf_map_to_setting (struct pinctrl_map const*,struct pinctrl_setting*) ;
 int pinmux_map_to_setting (struct pinctrl_map const*,struct pinctrl_setting*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int add_setting(struct pinctrl *p, struct pinctrl_dev *pctldev,
         const struct pinctrl_map *map)
{
 struct pinctrl_state *state;
 struct pinctrl_setting *setting;
 int ret;

 state = find_state(p, map->name);
 if (!state)
  state = create_state(p, map->name);
 if (IS_ERR(state))
  return PTR_ERR(state);

 if (map->type == PIN_MAP_TYPE_DUMMY_STATE)
  return 0;

 setting = kzalloc(sizeof(*setting), GFP_KERNEL);
 if (!setting)
  return -ENOMEM;

 setting->type = map->type;

 if (pctldev)
  setting->pctldev = pctldev;
 else
  setting->pctldev =
   get_pinctrl_dev_from_devname(map->ctrl_dev_name);
 if (!setting->pctldev) {
  kfree(setting);

  if (!strcmp(map->ctrl_dev_name, map->dev_name))
   return -ENODEV;




  dev_info(p->dev, "unknown pinctrl device %s in map entry, deferring probe",
   map->ctrl_dev_name);
  return -EPROBE_DEFER;
 }

 setting->dev_name = map->dev_name;

 switch (map->type) {
 case 128:
  ret = pinmux_map_to_setting(map, setting);
  break;
 case 129:
 case 130:
  ret = pinconf_map_to_setting(map, setting);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 if (ret < 0) {
  kfree(setting);
  return ret;
 }

 list_add_tail(&setting->node, &state->settings);

 return 0;
}
