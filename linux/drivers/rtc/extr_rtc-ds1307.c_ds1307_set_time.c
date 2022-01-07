
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct ds1307 {size_t type; int regmap; } ;
struct device {int dummy; } ;
struct chip_desc {int century_bit; int century_enable_bit; size_t century_reg; int offset; } ;
typedef int regs ;


 int DS1307_REG_CONTROL ;
 size_t DS1307_REG_HOUR ;
 size_t DS1307_REG_MDAY ;
 size_t DS1307_REG_MIN ;
 size_t DS1307_REG_MONTH ;
 size_t DS1307_REG_SECS ;
 size_t DS1307_REG_WDAY ;
 size_t DS1307_REG_YEAR ;
 int DS1338_BIT_OSF ;
 int DS1340_BIT_OSF ;
 int DS1340_REG_FLAG ;
 int EINVAL ;
 int MCP794XX_BIT_ST ;
 int MCP794XX_BIT_VBATEN ;
 int RX8130_REG_FLAG ;
 scalar_t__ RX8130_REG_FLAG_VLF ;
 int bin2bcd (int) ;
 struct chip_desc* chips ;
 int dev_dbg (struct device*,char*,char*,...) ;
 int dev_err (struct device*,char*,char*,int) ;
 struct ds1307* dev_get_drvdata (struct device*) ;




 int regmap_bulk_write (int ,int ,int*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int rx_8130 ;

__attribute__((used)) static int ds1307_set_time(struct device *dev, struct rtc_time *t)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);
 const struct chip_desc *chip = &chips[ds1307->type];
 int result;
 int tmp;
 u8 regs[7];

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
  "write", t->tm_sec, t->tm_min,
  t->tm_hour, t->tm_mday,
  t->tm_mon, t->tm_year, t->tm_wday);

 if (t->tm_year < 100)
  return -EINVAL;





 if (t->tm_year > 199)
  return -EINVAL;


 regs[DS1307_REG_SECS] = bin2bcd(t->tm_sec);
 regs[DS1307_REG_MIN] = bin2bcd(t->tm_min);
 regs[DS1307_REG_HOUR] = bin2bcd(t->tm_hour);
 regs[DS1307_REG_WDAY] = bin2bcd(t->tm_wday + 1);
 regs[DS1307_REG_MDAY] = bin2bcd(t->tm_mday);
 regs[DS1307_REG_MONTH] = bin2bcd(t->tm_mon + 1);


 tmp = t->tm_year - 100;
 regs[DS1307_REG_YEAR] = bin2bcd(tmp);

 if (chip->century_enable_bit)
  regs[chip->century_reg] |= chip->century_enable_bit;
 if (t->tm_year > 199 && chip->century_bit)
  regs[chip->century_reg] |= chip->century_bit;

 switch (ds1307->type) {
 case 131:
 case 130:
  regmap_update_bits(ds1307->regmap, DS1307_REG_CONTROL,
       DS1338_BIT_OSF, 0);
  break;
 case 129:
  regmap_update_bits(ds1307->regmap, DS1340_REG_FLAG,
       DS1340_BIT_OSF, 0);
  break;
 case 128:





  regs[DS1307_REG_SECS] |= MCP794XX_BIT_ST;
  regs[DS1307_REG_WDAY] |= MCP794XX_BIT_VBATEN;
  break;
 default:
  break;
 }

 dev_dbg(dev, "%s: %7ph\n", "write", regs);

 result = regmap_bulk_write(ds1307->regmap, chip->offset, regs,
       sizeof(regs));
 if (result) {
  dev_err(dev, "%s error %d\n", "write", result);
  return result;
 }

 if (ds1307->type == rx_8130) {

  result = regmap_write(ds1307->regmap, RX8130_REG_FLAG,
          ~(u8)RX8130_REG_FLAG_VLF);
  if (result) {
   dev_err(dev, "%s error %d\n", "write", result);
   return result;
  }
 }

 return 0;
}
