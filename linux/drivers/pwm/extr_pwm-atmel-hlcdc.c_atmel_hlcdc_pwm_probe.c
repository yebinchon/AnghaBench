
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_2__* parent; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int data; } ;
struct TYPE_3__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; struct device* dev; int * ops; } ;
struct atmel_hlcdc_pwm {TYPE_1__ chip; struct atmel_hlcdc* hlcdc; int errata; } ;
struct atmel_hlcdc {int periph_clk; } ;
struct TYPE_4__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PWM_POLARITY_INVERSED ;
 int atmel_hlcdc_dt_ids ;
 int atmel_hlcdc_pwm_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct atmel_hlcdc* dev_get_drvdata (TYPE_2__*) ;
 struct atmel_hlcdc_pwm* devm_kzalloc (struct device*,int,int ) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int of_pwm_xlate_with_flags ;
 int platform_set_drvdata (struct platform_device*,struct atmel_hlcdc_pwm*) ;
 int pwmchip_add_with_polarity (TYPE_1__*,int ) ;

__attribute__((used)) static int atmel_hlcdc_pwm_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct device *dev = &pdev->dev;
 struct atmel_hlcdc_pwm *chip;
 struct atmel_hlcdc *hlcdc;
 int ret;

 hlcdc = dev_get_drvdata(dev->parent);

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 ret = clk_prepare_enable(hlcdc->periph_clk);
 if (ret)
  return ret;

 match = of_match_node(atmel_hlcdc_dt_ids, dev->parent->of_node);
 if (match)
  chip->errata = match->data;

 chip->hlcdc = hlcdc;
 chip->chip.ops = &atmel_hlcdc_pwm_ops;
 chip->chip.dev = dev;
 chip->chip.base = -1;
 chip->chip.npwm = 1;
 chip->chip.of_xlate = of_pwm_xlate_with_flags;
 chip->chip.of_pwm_n_cells = 3;

 ret = pwmchip_add_with_polarity(&chip->chip, PWM_POLARITY_INVERSED);
 if (ret) {
  clk_disable_unprepare(hlcdc->periph_clk);
  return ret;
 }

 platform_set_drvdata(pdev, chip);

 return 0;
}
