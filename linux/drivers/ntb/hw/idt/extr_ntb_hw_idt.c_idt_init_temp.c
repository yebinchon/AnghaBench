
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; TYPE_3__* swcfg; int hwmon_mtx; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int dev; } ;


 int IDT_SW_TMPCTL ;
 scalar_t__ IS_ERR (struct device*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct idt_ntb_dev*,int ) ;
 int idt_sw_write (struct idt_ntb_dev*,int ,int) ;
 int idt_temp_groups ;
 int mutex_init (int *) ;

__attribute__((used)) static void idt_init_temp(struct idt_ntb_dev *ndev)
{
 struct device *hwmon;


 idt_sw_write(ndev, IDT_SW_TMPCTL, 0x0);


 mutex_init(&ndev->hwmon_mtx);

 hwmon = devm_hwmon_device_register_with_groups(&ndev->ntb.pdev->dev,
  ndev->swcfg->name, ndev, idt_temp_groups);
 if (IS_ERR(hwmon)) {
  dev_err(&ndev->ntb.pdev->dev, "Couldn't create hwmon device");
  return;
 }

 dev_dbg(&ndev->ntb.pdev->dev, "Temperature HWmon interface registered");
}
