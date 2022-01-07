
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_lane {int function; TYPE_2__* soc; TYPE_1__* pad; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int num_funcs; int funcs; } ;
struct TYPE_3__ {struct device dev; } ;


 int dev_err (struct device*,char*,char const*,struct device_node*) ;
 int match_string (int ,int ,char const*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;

int tegra_xusb_lane_parse_dt(struct tegra_xusb_lane *lane,
        struct device_node *np)
{
 struct device *dev = &lane->pad->dev;
 const char *function;
 int err;

 err = of_property_read_string(np, "nvidia,function", &function);
 if (err < 0)
  return err;

 err = match_string(lane->soc->funcs, lane->soc->num_funcs, function);
 if (err < 0) {
  dev_err(dev, "invalid function \"%s\" for lane \"%pOFn\"\n",
   function, np);
  return err;
 }

 lane->function = err;

 return 0;
}
