
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct arche_apb_ctrl_drvdata {int boot_ret; } ;


 struct arche_apb_ctrl_drvdata* dev_get_drvdata (struct device*) ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void apb_bootret_deassert(struct device *dev)
{
 struct arche_apb_ctrl_drvdata *apb = dev_get_drvdata(dev);

 gpiod_set_value(apb->boot_ret, 0);
}
