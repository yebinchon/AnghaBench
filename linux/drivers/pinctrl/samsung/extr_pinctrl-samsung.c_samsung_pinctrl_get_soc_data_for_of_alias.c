
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct samsung_pinctrl_of_match_data {int num_ctrl; struct samsung_pin_ctrl const* ctrl; } ;
struct samsung_pin_ctrl {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int dev_err (TYPE_1__*,char*,...) ;
 int of_alias_get_id (struct device_node*,char*) ;
 struct samsung_pinctrl_of_match_data* of_device_get_match_data (TYPE_1__*) ;

__attribute__((used)) static const struct samsung_pin_ctrl *
samsung_pinctrl_get_soc_data_for_of_alias(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 const struct samsung_pinctrl_of_match_data *of_data;
 int id;

 id = of_alias_get_id(node, "pinctrl");
 if (id < 0) {
  dev_err(&pdev->dev, "failed to get alias id\n");
  return ((void*)0);
 }

 of_data = of_device_get_match_data(&pdev->dev);
 if (id >= of_data->num_ctrl) {
  dev_err(&pdev->dev, "invalid alias id %d\n", id);
  return ((void*)0);
 }

 return &(of_data->ctrl[id]);
}
