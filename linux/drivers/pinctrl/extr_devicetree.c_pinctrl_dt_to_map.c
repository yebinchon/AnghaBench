
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct property {char* name; int * value; } ;
struct pinctrl_dev {int dummy; } ;
struct pinctrl {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef int phandle ;
typedef int __be32 ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int GFP_KERNEL ;
 int be32_to_cpup (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,char*,int) ;
 int dt_remember_dummy_state (struct pinctrl*,char const*) ;
 int dt_to_map_one_config (struct pinctrl*,struct pinctrl_dev*,char const*,struct device_node*) ;
 char* kasprintf (int ,char*,int) ;
 int kfree (char*) ;
 struct device_node* of_find_node_by_phandle (int ) ;
 struct property* of_find_property (struct device_node*,char*,int*) ;
 scalar_t__ of_have_populated_dt () ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 int pinctrl_dt_free_maps (struct pinctrl*) ;
 int strlen (char*) ;

int pinctrl_dt_to_map(struct pinctrl *p, struct pinctrl_dev *pctldev)
{
 struct device_node *np = p->dev->of_node;
 int state, ret;
 char *propname;
 struct property *prop;
 const char *statename;
 const __be32 *list;
 int size, config;
 phandle phandle;
 struct device_node *np_config;


 if (!np) {
  if (of_have_populated_dt())
   dev_dbg(p->dev,
    "no of_node; not parsing pinctrl DT\n");
  return 0;
 }


 of_node_get(np);


 for (state = 0; ; state++) {

  propname = kasprintf(GFP_KERNEL, "pinctrl-%d", state);
  prop = of_find_property(np, propname, &size);
  kfree(propname);
  if (!prop) {
   if (state == 0) {
    of_node_put(np);
    return -ENODEV;
   }
   break;
  }
  list = prop->value;
  size /= sizeof(*list);


  ret = of_property_read_string_index(np, "pinctrl-names",
          state, &statename);





  if (ret < 0)
   statename = prop->name + strlen("pinctrl-");


  for (config = 0; config < size; config++) {
   phandle = be32_to_cpup(list++);


   np_config = of_find_node_by_phandle(phandle);
   if (!np_config) {
    dev_err(p->dev,
     "prop %s index %i invalid phandle\n",
     prop->name, config);
    ret = -EINVAL;
    goto err;
   }


   ret = dt_to_map_one_config(p, pctldev, statename,
         np_config);
   of_node_put(np_config);
   if (ret < 0)
    goto err;
  }


  if (!size) {
   ret = dt_remember_dummy_state(p, statename);
   if (ret < 0)
    goto err;
  }
 }

 return 0;

err:
 pinctrl_dt_free_maps(p);
 return ret;
}
