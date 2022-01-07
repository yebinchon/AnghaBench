
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3fwrn5_i2c_phy {void* gpio_fw_wake; void* gpio_en; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int gpio_is_valid (void*) ;
 struct s3fwrn5_i2c_phy* i2c_get_clientdata (struct i2c_client*) ;
 void* of_get_named_gpio (struct device_node*,char*,int ) ;

__attribute__((used)) static int s3fwrn5_i2c_parse_dt(struct i2c_client *client)
{
 struct s3fwrn5_i2c_phy *phy = i2c_get_clientdata(client);
 struct device_node *np = client->dev.of_node;

 if (!np)
  return -ENODEV;

 phy->gpio_en = of_get_named_gpio(np, "s3fwrn5,en-gpios", 0);
 if (!gpio_is_valid(phy->gpio_en))
  return -ENODEV;

 phy->gpio_fw_wake = of_get_named_gpio(np, "s3fwrn5,fw-gpios", 0);
 if (!gpio_is_valid(phy->gpio_fw_wake))
  return -ENODEV;

 return 0;
}
