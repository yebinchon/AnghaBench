
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct esp {int flags; int dev; } ;
struct device_node {int dummy; } ;


 int ESP_FLAG_DIFFERENTIAL ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void esp_get_differential(struct esp *esp)
{
 struct platform_device *op = to_platform_device(esp->dev);
 struct device_node *dp;

 dp = op->dev.of_node;
 if (of_find_property(dp, "differential", ((void*)0)))
  esp->flags |= ESP_FLAG_DIFFERENTIAL;
 else
  esp->flags &= ~ESP_FLAG_DIFFERENTIAL;
}
