
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* configs; int num_configs; int group_or_pin; } ;
struct TYPE_4__ {TYPE_1__ configs; } ;
struct pinctrl_map {TYPE_2__ data; int type; } ;
struct pcs_function {int nconfs; struct pcs_conf_vals* conf; } ;
struct pcs_device {int dev; } ;
struct pcs_conf_vals {int dummy; } ;
struct pcs_conf_type {char* member_0; int param; int name; int member_1; } ;
struct device_node {int name; } ;


 int ARRAY_SIZE (struct pcs_conf_type const*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCS_HAS_PINCONF ;







 int PIN_MAP_TYPE_CONFIGS_GROUP ;
 void* devm_kcalloc (int ,int,int,int ) ;
 scalar_t__ of_find_property (struct device_node*,int ,int *) ;
 int pcs_add_conf2 (struct pcs_device*,struct device_node*,int ,int ,struct pcs_conf_vals**,unsigned long**) ;
 int pcs_add_conf4 (struct pcs_device*,struct device_node*,int ,int ,struct pcs_conf_vals**,unsigned long**) ;

__attribute__((used)) static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
        struct pcs_function *func,
        struct pinctrl_map **map)

{
 struct pinctrl_map *m = *map;
 int i = 0, nconfs = 0;
 unsigned long *settings = ((void*)0), *s = ((void*)0);
 struct pcs_conf_vals *conf = ((void*)0);
 static const struct pcs_conf_type prop2[] = {
  { "pinctrl-single,drive-strength", 132, },
  { "pinctrl-single,slew-rate", 128, },
  { "pinctrl-single,input-schmitt", 131, },
  { "pinctrl-single,low-power-mode", 129, },
 };
 static const struct pcs_conf_type prop4[] = {
  { "pinctrl-single,bias-pullup", 133, },
  { "pinctrl-single,bias-pulldown", 134, },
  { "pinctrl-single,input-schmitt-enable",
   130, },
 };


 if (!PCS_HAS_PINCONF)
  return 0;


 for (i = 0; i < ARRAY_SIZE(prop2); i++) {
  if (of_find_property(np, prop2[i].name, ((void*)0)))
   nconfs++;
 }
 for (i = 0; i < ARRAY_SIZE(prop4); i++) {
  if (of_find_property(np, prop4[i].name, ((void*)0)))
   nconfs++;
 }
 if (!nconfs)
  return 0;

 func->conf = devm_kcalloc(pcs->dev,
      nconfs, sizeof(struct pcs_conf_vals),
      GFP_KERNEL);
 if (!func->conf)
  return -ENOMEM;
 func->nconfs = nconfs;
 conf = &(func->conf[0]);
 m++;
 settings = devm_kcalloc(pcs->dev, nconfs, sizeof(unsigned long),
    GFP_KERNEL);
 if (!settings)
  return -ENOMEM;
 s = &settings[0];

 for (i = 0; i < ARRAY_SIZE(prop2); i++)
  pcs_add_conf2(pcs, np, prop2[i].name, prop2[i].param,
         &conf, &s);
 for (i = 0; i < ARRAY_SIZE(prop4); i++)
  pcs_add_conf4(pcs, np, prop4[i].name, prop4[i].param,
         &conf, &s);
 m->type = PIN_MAP_TYPE_CONFIGS_GROUP;
 m->data.configs.group_or_pin = np->name;
 m->data.configs.configs = settings;
 m->data.configs.num_configs = nconfs;
 return 0;
}
