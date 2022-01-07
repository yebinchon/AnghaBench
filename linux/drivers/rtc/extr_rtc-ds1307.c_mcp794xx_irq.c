
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mutex {int dummy; } ;
struct ds1307 {TYPE_1__* rtc; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 int IRQ_HANDLED ;
 int MCP794XX_BIT_ALM0_EN ;
 int MCP794XX_BIT_ALMX_IF ;
 int MCP794XX_REG_ALARM0_CTRL ;
 int MCP794XX_REG_CONTROL ;
 int RTC_AF ;
 int RTC_IRQF ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t mcp794xx_irq(int irq, void *dev_id)
{
 struct ds1307 *ds1307 = dev_id;
 struct mutex *lock = &ds1307->rtc->ops_lock;
 int reg, ret;

 mutex_lock(lock);


 ret = regmap_read(ds1307->regmap, MCP794XX_REG_ALARM0_CTRL, &reg);
 if (ret)
  goto out;
 if (!(reg & MCP794XX_BIT_ALMX_IF))
  goto out;
 reg &= ~MCP794XX_BIT_ALMX_IF;
 ret = regmap_write(ds1307->regmap, MCP794XX_REG_ALARM0_CTRL, reg);
 if (ret)
  goto out;


 ret = regmap_update_bits(ds1307->regmap, MCP794XX_REG_CONTROL,
     MCP794XX_BIT_ALM0_EN, 0);
 if (ret)
  goto out;

 rtc_update_irq(ds1307->rtc, 1, RTC_AF | RTC_IRQF);

out:
 mutex_unlock(lock);

 return IRQ_HANDLED;
}
