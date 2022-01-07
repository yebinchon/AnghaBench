
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {scalar_t__ driver_data; int of_node; int init_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ab3100_reg_init_order ;
 int * ab3100_reg_initvals ;
 TYPE_1__* ab3100_regulator_matches ;
 int ab3100_regulator_register (struct platform_device*,int *,int ,int ,unsigned long) ;
 int abx500_set_register_interruptible (int *,int ,TYPE_1__,int ) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int
ab3100_regulator_of_probe(struct platform_device *pdev, struct device_node *np)
{
 int err, i;






 for (i = 0; i < ARRAY_SIZE(ab3100_reg_init_order); i++) {
  err = abx500_set_register_interruptible(&pdev->dev, 0,
     ab3100_reg_init_order[i],
     ab3100_reg_initvals[i]);
  if (err) {
   dev_err(&pdev->dev, "regulator initialization failed with error %d\n",
    err);
   return err;
  }
 }

 for (i = 0; i < ARRAY_SIZE(ab3100_regulator_matches); i++) {
  err = ab3100_regulator_register(
   pdev, ((void*)0), ab3100_regulator_matches[i].init_data,
   ab3100_regulator_matches[i].of_node,
   (unsigned long)ab3100_regulator_matches[i].driver_data);
  if (err)
   return err;
 }

 return 0;
}
