
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 int AB8500_SYS_CHARGER_CONTROL_REG ;
 int AB8500_SYS_CTRL1_BLOCK ;
 int EXTERNAL_CHARGER_DISABLE_REG_VAL ;
 int EXTERNAL_CHARGER_ENABLE_REG_VAL ;
 int abx500_set_register_interruptible (struct device*,int ,int ,int ) ;
 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int ab8500_external_charger_prepare(struct notifier_block *charger_nb,
    unsigned long event, void *data)
{
 int ret;
 struct device *dev = data;

 ret = abx500_set_register_interruptible(dev, AB8500_SYS_CTRL1_BLOCK,
      AB8500_SYS_CHARGER_CONTROL_REG,
      EXTERNAL_CHARGER_DISABLE_REG_VAL);
 if (ret < 0) {
  dev_err(dev, "write reg failed %d\n", ret);
  goto out;
 }
 ret = abx500_set_register_interruptible(dev, AB8500_SYS_CTRL1_BLOCK,
      AB8500_SYS_CHARGER_CONTROL_REG,
      EXTERNAL_CHARGER_ENABLE_REG_VAL);
 if (ret < 0)
  dev_err(dev, "Write reg failed %d\n", ret);

out:
 return ret;
}
