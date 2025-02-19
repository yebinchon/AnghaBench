
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {scalar_t__* args; } ;
struct device_node {char* name; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int dev_err (int ,char*,...) ;
 TYPE_1__* kdev ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 scalar_t__ of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int,struct of_phandle_args*) ;
 int of_property_match_string (struct device_node*,char*,char const*) ;

__attribute__((used)) static int of_channel_match_helper(struct device_node *np, const char *name,
     const char **dma_instance)
{
 struct of_phandle_args args;
 struct device_node *dma_node;
 int index;

 dma_node = of_parse_phandle(np, "ti,navigator-dmas", 0);
 if (!dma_node)
  return -ENODEV;

 *dma_instance = dma_node->name;
 index = of_property_match_string(np, "ti,navigator-dma-names", name);
 if (index < 0) {
  dev_err(kdev->dev, "No 'ti,navigator-dma-names' property\n");
  return -ENODEV;
 }

 if (of_parse_phandle_with_fixed_args(np, "ti,navigator-dmas",
     1, index, &args)) {
  dev_err(kdev->dev, "Missing the phandle args name %s\n", name);
  return -ENODEV;
 }

 if (args.args[0] < 0) {
  dev_err(kdev->dev, "Missing args for %s\n", name);
  return -ENODEV;
 }

 return args.args[0];
}
