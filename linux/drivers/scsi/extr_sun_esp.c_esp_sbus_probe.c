
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {struct device_node* parent; } ;


 int ENODEV ;
 int esp_sbus_probe_one (struct platform_device*,struct platform_device*,int) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int esp_sbus_probe(struct platform_device *op)
{
 struct device_node *dma_node = ((void*)0);
 struct device_node *dp = op->dev.of_node;
 struct platform_device *dma_of = ((void*)0);
 int hme = 0;
 int ret;

 if (of_node_name_eq(dp->parent, "espdma") ||
     of_node_name_eq(dp->parent, "dma"))
  dma_node = dp->parent;
 else if (of_node_name_eq(dp, "SUNW,fas")) {
  dma_node = op->dev.of_node;
  hme = 1;
 }
 if (dma_node)
  dma_of = of_find_device_by_node(dma_node);
 if (!dma_of)
  return -ENODEV;

 ret = esp_sbus_probe_one(op, dma_of, hme);
 if (ret)
  put_device(&dma_of->dev);

 return ret;
}
