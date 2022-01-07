
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf2123_data {int map; } ;
struct device {int dummy; } ;


 unsigned int CTRL1_CLEAR ;
 unsigned int CTRL1_STOP ;
 unsigned int CTRL1_SW_RESET ;
 int ENODEV ;
 int PCF2123_REG_CTRL1 ;
 int dev_dbg (struct device*,char*,...) ;
 struct pcf2123_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pcf2123_reset(struct device *dev)
{
 struct pcf2123_data *pcf2123 = dev_get_drvdata(dev);
 int ret;
 unsigned int val = 0;

 ret = regmap_write(pcf2123->map, PCF2123_REG_CTRL1, CTRL1_SW_RESET);
 if (ret)
  return ret;


 dev_dbg(dev, "stopping RTC\n");
 ret = regmap_write(pcf2123->map, PCF2123_REG_CTRL1, CTRL1_STOP);
 if (ret)
  return ret;


 dev_dbg(dev, "checking for presence of RTC\n");
 ret = regmap_read(pcf2123->map, PCF2123_REG_CTRL1, &val);
 if (ret)
  return ret;

 dev_dbg(dev, "received data from RTC (0x%08X)\n", val);
 if (!(val & CTRL1_STOP))
  return -ENODEV;


 ret = regmap_write(pcf2123->map, PCF2123_REG_CTRL1, CTRL1_CLEAR);
 if (ret)
  return ret;

 return 0;
}
