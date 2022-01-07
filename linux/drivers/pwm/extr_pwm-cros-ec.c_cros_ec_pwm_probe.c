
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_chip {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; struct device* dev; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct cros_ec_pwm_device {struct cros_ec_device* ec; struct pwm_chip chip; } ;
struct cros_ec_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_num_pwms (struct cros_ec_device*) ;
 int cros_ec_pwm_ops ;
 int cros_ec_pwm_xlate ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 struct cros_ec_device* dev_get_drvdata (int ) ;
 struct cros_ec_pwm_device* devm_kzalloc (struct device*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cros_ec_pwm_device*) ;
 int pwmchip_add (struct pwm_chip*) ;

__attribute__((used)) static int cros_ec_pwm_probe(struct platform_device *pdev)
{
 struct cros_ec_device *ec = dev_get_drvdata(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct cros_ec_pwm_device *ec_pwm;
 struct pwm_chip *chip;
 int ret;

 if (!ec) {
  dev_err(dev, "no parent EC device\n");
  return -EINVAL;
 }

 ec_pwm = devm_kzalloc(dev, sizeof(*ec_pwm), GFP_KERNEL);
 if (!ec_pwm)
  return -ENOMEM;
 chip = &ec_pwm->chip;
 ec_pwm->ec = ec;


 chip->dev = dev;
 chip->ops = &cros_ec_pwm_ops;
 chip->of_xlate = cros_ec_pwm_xlate;
 chip->of_pwm_n_cells = 1;
 chip->base = -1;
 ret = cros_ec_num_pwms(ec);
 if (ret < 0) {
  dev_err(dev, "Couldn't find PWMs: %d\n", ret);
  return ret;
 }
 chip->npwm = ret;
 dev_dbg(dev, "Probed %u PWMs\n", chip->npwm);

 ret = pwmchip_add(chip);
 if (ret < 0) {
  dev_err(dev, "cannot register PWM: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, ec_pwm);

 return ret;
}
