
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct charger_desc {int dummy; } ;


 struct charger_desc* dev_get_platdata (TYPE_1__*) ;
 struct charger_desc* of_cm_parse_desc (TYPE_1__*) ;

__attribute__((used)) static inline struct charger_desc *cm_get_drv_data(struct platform_device *pdev)
{
 if (pdev->dev.of_node)
  return of_cm_parse_desc(&pdev->dev);
 return dev_get_platdata(&pdev->dev);
}
