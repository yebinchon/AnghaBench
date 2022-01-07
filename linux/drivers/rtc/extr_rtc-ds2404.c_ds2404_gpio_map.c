
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct ds2404_platform_data {int gpio_dq; int gpio_clk; int gpio_rst; } ;
struct ds2404 {TYPE_1__* gpio; } ;
struct TYPE_3__ {int gpio; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t DS2404_CLK ;
 size_t DS2404_DQ ;
 size_t DS2404_RST ;
 int dev_err (int *,char*,int ,int) ;
 TYPE_1__* ds2404_gpio ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,int ) ;

__attribute__((used)) static int ds2404_gpio_map(struct ds2404 *chip, struct platform_device *pdev,
     struct ds2404_platform_data *pdata)
{
 int i, err;

 ds2404_gpio[DS2404_RST].gpio = pdata->gpio_rst;
 ds2404_gpio[DS2404_CLK].gpio = pdata->gpio_clk;
 ds2404_gpio[DS2404_DQ].gpio = pdata->gpio_dq;

 for (i = 0; i < ARRAY_SIZE(ds2404_gpio); i++) {
  err = gpio_request(ds2404_gpio[i].gpio, ds2404_gpio[i].name);
  if (err) {
   dev_err(&pdev->dev, "error mapping gpio %s: %d\n",
    ds2404_gpio[i].name, err);
   goto err_request;
  }
  if (i != DS2404_DQ)
   gpio_direction_output(ds2404_gpio[i].gpio, 1);
 }

 chip->gpio = ds2404_gpio;
 return 0;

err_request:
 while (--i >= 0)
  gpio_free(ds2404_gpio[i].gpio);
 return err;
}
