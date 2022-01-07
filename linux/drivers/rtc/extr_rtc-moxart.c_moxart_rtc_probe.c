
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct moxart_rtc {int gpio_data; int gpio_sclk; int gpio_reset; int rtc; int rtc_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_DIR_OUT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_gpio_request (TYPE_1__*,int,char*) ;
 int devm_gpio_request_one (TYPE_1__*,int,int ,char*) ;
 struct moxart_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int gpio_is_valid (int) ;
 int moxart_rtc_ops ;
 void* of_get_named_gpio (int ,char*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct moxart_rtc*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int moxart_rtc_probe(struct platform_device *pdev)
{
 struct moxart_rtc *moxart_rtc;
 int ret = 0;

 moxart_rtc = devm_kzalloc(&pdev->dev, sizeof(*moxart_rtc), GFP_KERNEL);
 if (!moxart_rtc)
  return -ENOMEM;

 moxart_rtc->gpio_data = of_get_named_gpio(pdev->dev.of_node,
        "gpio-rtc-data", 0);
 if (!gpio_is_valid(moxart_rtc->gpio_data)) {
  dev_err(&pdev->dev, "invalid gpio (data): %d\n",
   moxart_rtc->gpio_data);
  return moxart_rtc->gpio_data;
 }

 moxart_rtc->gpio_sclk = of_get_named_gpio(pdev->dev.of_node,
        "gpio-rtc-sclk", 0);
 if (!gpio_is_valid(moxart_rtc->gpio_sclk)) {
  dev_err(&pdev->dev, "invalid gpio (sclk): %d\n",
   moxart_rtc->gpio_sclk);
  return moxart_rtc->gpio_sclk;
 }

 moxart_rtc->gpio_reset = of_get_named_gpio(pdev->dev.of_node,
         "gpio-rtc-reset", 0);
 if (!gpio_is_valid(moxart_rtc->gpio_reset)) {
  dev_err(&pdev->dev, "invalid gpio (reset): %d\n",
   moxart_rtc->gpio_reset);
  return moxart_rtc->gpio_reset;
 }

 spin_lock_init(&moxart_rtc->rtc_lock);
 platform_set_drvdata(pdev, moxart_rtc);

 ret = devm_gpio_request(&pdev->dev, moxart_rtc->gpio_data, "rtc_data");
 if (ret) {
  dev_err(&pdev->dev, "can't get rtc_data gpio\n");
  return ret;
 }

 ret = devm_gpio_request_one(&pdev->dev, moxart_rtc->gpio_sclk,
        GPIOF_DIR_OUT, "rtc_sclk");
 if (ret) {
  dev_err(&pdev->dev, "can't get rtc_sclk gpio\n");
  return ret;
 }

 ret = devm_gpio_request_one(&pdev->dev, moxart_rtc->gpio_reset,
        GPIOF_DIR_OUT, "rtc_reset");
 if (ret) {
  dev_err(&pdev->dev, "can't get rtc_reset gpio\n");
  return ret;
 }

 moxart_rtc->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
         &moxart_rtc_ops,
         THIS_MODULE);
 if (IS_ERR(moxart_rtc->rtc)) {
  dev_err(&pdev->dev, "devm_rtc_device_register failed\n");
  return PTR_ERR(moxart_rtc->rtc);
 }

 return 0;
}
