
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ARRAY_SIZE (int **) ;
 int CONFIG_OF ;
 int IS_ENABLED (int ) ;
 int ** amba_ports ;
 int dev_warn (struct device*,char*,...) ;
 int of_alias_get_id (struct device_node*,char*) ;

__attribute__((used)) static int pl011_probe_dt_alias(int index, struct device *dev)
{
 struct device_node *np;
 static bool seen_dev_with_alias = 0;
 static bool seen_dev_without_alias = 0;
 int ret = index;

 if (!IS_ENABLED(CONFIG_OF))
  return ret;

 np = dev->of_node;
 if (!np)
  return ret;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0) {
  seen_dev_without_alias = 1;
  ret = index;
 } else {
  seen_dev_with_alias = 1;
  if (ret >= ARRAY_SIZE(amba_ports) || amba_ports[ret] != ((void*)0)) {
   dev_warn(dev, "requested serial port %d  not available.\n", ret);
   ret = index;
  }
 }

 if (seen_dev_with_alias && seen_dev_without_alias)
  dev_warn(dev, "aliased and non-aliased serial devices found in device tree. Serial port enumeration may be unpredictable.\n");

 return ret;
}
