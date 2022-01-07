
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ARRAY_SIZE (int **) ;
 int CONFIG_OF ;
 int IS_ENABLED (int ) ;
 int dev_warn (struct device*,char*,int) ;
 int of_alias_get_id (struct device_node*,char*) ;
 int ** sprd_port ;

__attribute__((used)) static int sprd_probe_dt_alias(int index, struct device *dev)
{
 struct device_node *np;
 int ret = index;

 if (!IS_ENABLED(CONFIG_OF))
  return ret;

 np = dev->of_node;
 if (!np)
  return ret;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0)
  ret = index;
 else if (ret >= ARRAY_SIZE(sprd_port) || sprd_port[ret] != ((void*)0)) {
  dev_warn(dev, "requested serial port %d not available.\n", ret);
  ret = index;
 }

 return ret;
}
