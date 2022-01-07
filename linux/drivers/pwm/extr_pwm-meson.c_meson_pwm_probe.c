
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int of_pwm_n_cells; int of_xlate; int npwm; int * ops; int * dev; } ;
struct meson_pwm {TYPE_1__ chip; int data; int lock; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MESON_NUM_PWMS ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct meson_pwm* devm_kzalloc (int *,int,int ) ;
 int meson_pwm_init_channels (struct meson_pwm*) ;
 int meson_pwm_ops ;
 int of_device_get_match_data (int *) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct meson_pwm*) ;
 int pwmchip_add (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int meson_pwm_probe(struct platform_device *pdev)
{
 struct meson_pwm *meson;
 struct resource *regs;
 int err;

 meson = devm_kzalloc(&pdev->dev, sizeof(*meson), GFP_KERNEL);
 if (!meson)
  return -ENOMEM;

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 meson->base = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(meson->base))
  return PTR_ERR(meson->base);

 spin_lock_init(&meson->lock);
 meson->chip.dev = &pdev->dev;
 meson->chip.ops = &meson_pwm_ops;
 meson->chip.base = -1;
 meson->chip.npwm = MESON_NUM_PWMS;
 meson->chip.of_xlate = of_pwm_xlate_with_flags;
 meson->chip.of_pwm_n_cells = 3;

 meson->data = of_device_get_match_data(&pdev->dev);

 err = meson_pwm_init_channels(meson);
 if (err < 0)
  return err;

 err = pwmchip_add(&meson->chip);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to register PWM chip: %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, meson);

 return 0;
}
