
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int BCOVE_LVL1_PWRBTN ;
 int BCOVE_MIRQLVL1 ;
 int BCOVE_PBSTATUS ;
 unsigned int BCOVE_PBSTATUS_PBLVL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KEY_POWER ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 struct regmap* dev_get_drvdata (struct device*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t mrfld_pwrbtn_interrupt(int irq, void *dev_id)
{
 struct input_dev *input = dev_id;
 struct device *dev = input->dev.parent;
 struct regmap *regmap = dev_get_drvdata(dev);
 unsigned int state;
 int ret;

 ret = regmap_read(regmap, BCOVE_PBSTATUS, &state);
 if (ret)
  return IRQ_NONE;

 dev_dbg(dev, "PBSTATUS=0x%x\n", state);
 input_report_key(input, KEY_POWER, !(state & BCOVE_PBSTATUS_PBLVL));
 input_sync(input);

 regmap_update_bits(regmap, BCOVE_MIRQLVL1, BCOVE_LVL1_PWRBTN, 0);
 return IRQ_HANDLED;
}
