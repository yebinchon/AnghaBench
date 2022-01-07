
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_drp_toggling; int set_vconn; int init; int regmap; } ;
struct rt1711h_chip {int tcpci; TYPE_1__ data; int * dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct rt1711h_chip* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt1711h_chip*) ;
 int rt1711h_check_revision (struct i2c_client*) ;
 int rt1711h_init ;
 int rt1711h_init_alert (struct rt1711h_chip*,struct i2c_client*) ;
 int rt1711h_regmap_config ;
 int rt1711h_set_vconn ;
 int rt1711h_start_drp_toggling ;
 int rt1711h_sw_reset (struct rt1711h_chip*) ;
 int tcpci_register_port (int *,TYPE_1__*) ;

__attribute__((used)) static int rt1711h_probe(struct i2c_client *client,
    const struct i2c_device_id *i2c_id)
{
 int ret;
 struct rt1711h_chip *chip;

 ret = rt1711h_check_revision(client);
 if (ret < 0) {
  dev_err(&client->dev, "check vid/pid fail\n");
  return ret;
 }

 chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->data.regmap = devm_regmap_init_i2c(client,
       &rt1711h_regmap_config);
 if (IS_ERR(chip->data.regmap))
  return PTR_ERR(chip->data.regmap);

 chip->dev = &client->dev;
 i2c_set_clientdata(client, chip);

 ret = rt1711h_sw_reset(chip);
 if (ret < 0)
  return ret;

 ret = rt1711h_init_alert(chip, client);
 if (ret < 0)
  return ret;

 chip->data.init = rt1711h_init;
 chip->data.set_vconn = rt1711h_set_vconn;
 chip->data.start_drp_toggling = rt1711h_start_drp_toggling;
 chip->tcpci = tcpci_register_port(chip->dev, &chip->data);
 if (IS_ERR_OR_NULL(chip->tcpci))
  return PTR_ERR(chip->tcpci);

 return 0;
}
