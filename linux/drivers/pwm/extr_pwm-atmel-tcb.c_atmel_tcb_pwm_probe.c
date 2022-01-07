
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; TYPE_2__* dev; } ;
struct atmel_tcb_pwm_chip {struct atmel_tc* tc; TYPE_1__ chip; int lock; } ;
struct atmel_tc {int slow_clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NPWM ;
 struct atmel_tc* atmel_tc_alloc (int) ;
 int atmel_tc_free (struct atmel_tc*) ;
 int atmel_tcb_pwm_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct atmel_tcb_pwm_chip* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_pwm_xlate_with_flags ;
 int platform_set_drvdata (struct platform_device*,struct atmel_tcb_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int atmel_tcb_pwm_probe(struct platform_device *pdev)
{
 struct atmel_tcb_pwm_chip *tcbpwm;
 struct device_node *np = pdev->dev.of_node;
 struct atmel_tc *tc;
 int err;
 int tcblock;

 err = of_property_read_u32(np, "tc-block", &tcblock);
 if (err < 0) {
  dev_err(&pdev->dev,
   "failed to get Timer Counter Block number from device tree (error: %d)\n",
   err);
  return err;
 }

 tc = atmel_tc_alloc(tcblock);
 if (tc == ((void*)0)) {
  dev_err(&pdev->dev, "failed to allocate Timer Counter Block\n");
  return -ENOMEM;
 }

 tcbpwm = devm_kzalloc(&pdev->dev, sizeof(*tcbpwm), GFP_KERNEL);
 if (tcbpwm == ((void*)0)) {
  err = -ENOMEM;
  goto err_free_tc;
 }

 tcbpwm->chip.dev = &pdev->dev;
 tcbpwm->chip.ops = &atmel_tcb_pwm_ops;
 tcbpwm->chip.of_xlate = of_pwm_xlate_with_flags;
 tcbpwm->chip.of_pwm_n_cells = 3;
 tcbpwm->chip.base = -1;
 tcbpwm->chip.npwm = NPWM;
 tcbpwm->tc = tc;

 err = clk_prepare_enable(tc->slow_clk);
 if (err)
  goto err_free_tc;

 spin_lock_init(&tcbpwm->lock);

 err = pwmchip_add(&tcbpwm->chip);
 if (err < 0)
  goto err_disable_clk;

 platform_set_drvdata(pdev, tcbpwm);

 return 0;

err_disable_clk:
 clk_disable_unprepare(tcbpwm->tc->slow_clk);

err_free_tc:
 atmel_tc_free(tc);

 return err;
}
