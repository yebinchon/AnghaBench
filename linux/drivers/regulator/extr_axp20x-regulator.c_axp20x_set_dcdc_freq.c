
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct axp20x_dev {int variant; int regmap; } ;




 unsigned int AXP20X_DCDC_FREQ ;
 int AXP20X_FREQ_DCDC_MASK ;


 unsigned int AXP803_DCDC_FREQ_CTRL ;

 unsigned int AXP806_DCDC_FREQ_CTRL ;



 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;
 struct axp20x_dev* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int regmap_update_bits (int ,unsigned int,int ,int) ;

__attribute__((used)) static int axp20x_set_dcdc_freq(struct platform_device *pdev, u32 dcdcfreq)
{
 struct axp20x_dev *axp20x = dev_get_drvdata(pdev->dev.parent);
 unsigned int reg = AXP20X_DCDC_FREQ;
 u32 min, max, def, step;

 switch (axp20x->variant) {
 case 135:
 case 134:
  min = 750;
  max = 1875;
  def = 1500;
  step = 75;
  break;
 case 131:
 case 128:





  reg = AXP803_DCDC_FREQ_CTRL;

 case 130:




  if (axp20x->variant == 130)
   reg = AXP806_DCDC_FREQ_CTRL;

 case 133:
 case 132:
 case 129:
  min = 1800;
  max = 4050;
  def = 3000;
  step = 150;
  break;
 default:
  dev_err(&pdev->dev,
   "Setting DCDC frequency for unsupported AXP variant\n");
  return -EINVAL;
 }

 if (dcdcfreq == 0)
  dcdcfreq = def;

 if (dcdcfreq < min) {
  dcdcfreq = min;
  dev_warn(&pdev->dev, "DCDC frequency too low. Set to %ukHz\n",
    min);
 }

 if (dcdcfreq > max) {
  dcdcfreq = max;
  dev_warn(&pdev->dev, "DCDC frequency too high. Set to %ukHz\n",
    max);
 }

 dcdcfreq = (dcdcfreq - min) / step;

 return regmap_update_bits(axp20x->regmap, reg,
      AXP20X_FREQ_DCDC_MASK, dcdcfreq);
}
