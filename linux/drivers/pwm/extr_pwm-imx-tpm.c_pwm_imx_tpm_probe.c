
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int of_pwm_n_cells; int npwm; int of_xlate; int * ops; int * dev; } ;
struct imx_tpm_pwm_chip {scalar_t__ clk; TYPE_1__ chip; int lock; scalar_t__ base; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int FIELD_GET (int ,int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ PWM_IMX_TPM_PARAM ;
 int PWM_IMX_TPM_PARAM_CHAN ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 struct imx_tpm_pwm_chip* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int imx_tpm_pwm_ops ;
 int mutex_init (int *) ;
 int of_pwm_xlate_with_flags ;
 int platform_set_drvdata (struct platform_device*,struct imx_tpm_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int pwm_imx_tpm_probe(struct platform_device *pdev)
{
 struct imx_tpm_pwm_chip *tpm;
 int ret;
 u32 val;

 tpm = devm_kzalloc(&pdev->dev, sizeof(*tpm), GFP_KERNEL);
 if (!tpm)
  return -ENOMEM;

 platform_set_drvdata(pdev, tpm);

 tpm->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(tpm->base))
  return PTR_ERR(tpm->base);

 tpm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(tpm->clk)) {
  ret = PTR_ERR(tpm->clk);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev,
    "failed to get PWM clock: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(tpm->clk);
 if (ret) {
  dev_err(&pdev->dev,
   "failed to prepare or enable clock: %d\n", ret);
  return ret;
 }

 tpm->chip.dev = &pdev->dev;
 tpm->chip.ops = &imx_tpm_pwm_ops;
 tpm->chip.base = -1;
 tpm->chip.of_xlate = of_pwm_xlate_with_flags;
 tpm->chip.of_pwm_n_cells = 3;


 val = readl(tpm->base + PWM_IMX_TPM_PARAM);
 tpm->chip.npwm = FIELD_GET(PWM_IMX_TPM_PARAM_CHAN, val);

 mutex_init(&tpm->lock);

 ret = pwmchip_add(&tpm->chip);
 if (ret) {
  dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
  clk_disable_unprepare(tpm->clk);
 }

 return ret;
}
