
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct TYPE_2__ {int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; int pending; } ;
struct ds1307 {int regmap; int flags; } ;
struct device {int dummy; } ;
typedef int regs ;


 unsigned char DS1337_BIT_A1I ;
 unsigned char DS1337_BIT_A1IE ;
 unsigned char DS1337_BIT_A2I ;
 unsigned char DS1337_BIT_A2IE ;
 int DS1337_REG_CONTROL ;
 int DS1339_REG_ALARM1_SECS ;
 int EINVAL ;
 int HAS_ALARM ;
 unsigned char bin2bcd (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 struct ds1307* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,unsigned char*,int) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;
 int regmap_write (int ,int ,unsigned char) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ds1337_set_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);
 unsigned char regs[9];
 u8 control, status;
 int ret;

 if (!test_bit(HAS_ALARM, &ds1307->flags))
  return -EINVAL;

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, enabled=%d, pending=%d\n",
  "alarm set", t->time.tm_sec, t->time.tm_min,
  t->time.tm_hour, t->time.tm_mday,
  t->enabled, t->pending);


 ret = regmap_bulk_read(ds1307->regmap, DS1339_REG_ALARM1_SECS, regs,
          sizeof(regs));
 if (ret) {
  dev_err(dev, "%s error %d\n", "alarm write", ret);
  return ret;
 }
 control = regs[7];
 status = regs[8];

 dev_dbg(dev, "%s: %4ph, %3ph, %02x %02x\n", "alarm set (old status)",
  &regs[0], &regs[4], control, status);


 regs[0] = bin2bcd(t->time.tm_sec);
 regs[1] = bin2bcd(t->time.tm_min);
 regs[2] = bin2bcd(t->time.tm_hour);
 regs[3] = bin2bcd(t->time.tm_mday);


 regs[4] = 0;
 regs[5] = 0;
 regs[6] = 0;


 regs[7] = control & ~(DS1337_BIT_A1IE | DS1337_BIT_A2IE);
 regs[8] = status & ~(DS1337_BIT_A1I | DS1337_BIT_A2I);

 ret = regmap_bulk_write(ds1307->regmap, DS1339_REG_ALARM1_SECS, regs,
    sizeof(regs));
 if (ret) {
  dev_err(dev, "can't set alarm time\n");
  return ret;
 }


 if (t->enabled) {
  dev_dbg(dev, "alarm IRQ armed\n");
  regs[7] |= DS1337_BIT_A1IE;
  regmap_write(ds1307->regmap, DS1337_REG_CONTROL, regs[7]);
 }

 return 0;
}
