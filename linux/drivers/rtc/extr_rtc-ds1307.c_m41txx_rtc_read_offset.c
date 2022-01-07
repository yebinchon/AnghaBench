
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct ds1307 {int regmap; } ;
struct device {int dummy; } ;


 unsigned int M41TXX_BIT_CALIB_SIGN ;
 unsigned int M41TXX_M_CALIBRATION ;
 long M41TXX_NEG_OFFSET_STEP_PPB ;
 long M41TXX_POS_OFFSET_STEP_PPB ;
 int M41TXX_REG_CONTROL ;
 struct ds1307* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int m41txx_rtc_read_offset(struct device *dev, long *offset)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);
 unsigned int ctrl_reg;
 u8 val;

 regmap_read(ds1307->regmap, M41TXX_REG_CONTROL, &ctrl_reg);

 val = ctrl_reg & M41TXX_M_CALIBRATION;


 if (ctrl_reg & M41TXX_BIT_CALIB_SIGN)
  *offset = (val * M41TXX_POS_OFFSET_STEP_PPB);
 else
  *offset = -(val * M41TXX_NEG_OFFSET_STEP_PPB);

 return 0;
}
