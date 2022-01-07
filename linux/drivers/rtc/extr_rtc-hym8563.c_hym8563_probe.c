
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; int irq; } ;
struct hym8563 {int valid; TYPE_1__* rtc; struct i2c_client* client; } ;
struct TYPE_4__ {int uie_unsupported; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HYM8563_SEC ;
 int HYM8563_SEC_VL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 int dev_dbg (int *,char*,char*) ;
 int dev_err (int *,char*,int,...) ;
 int device_set_wakeup_capable (int *,int) ;
 struct hym8563* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct hym8563*) ;
 TYPE_1__* devm_rtc_device_register (int *,int ,int *,int ) ;
 int hym8563_clkout_register_clk (struct hym8563*) ;
 int hym8563_init_device (struct i2c_client*) ;
 int hym8563_irq ;
 int hym8563_rtc_ops ;
 int i2c_set_clientdata (struct i2c_client*,struct hym8563*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int hym8563_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct hym8563 *hym8563;
 int ret;

 hym8563 = devm_kzalloc(&client->dev, sizeof(*hym8563), GFP_KERNEL);
 if (!hym8563)
  return -ENOMEM;

 hym8563->client = client;
 i2c_set_clientdata(client, hym8563);

 device_set_wakeup_capable(&client->dev, 1);

 ret = hym8563_init_device(client);
 if (ret) {
  dev_err(&client->dev, "could not init device, %d\n", ret);
  return ret;
 }

 if (client->irq > 0) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      ((void*)0), hym8563_irq,
      IRQF_TRIGGER_LOW | IRQF_ONESHOT,
      client->name, hym8563);
  if (ret < 0) {
   dev_err(&client->dev, "irq %d request failed, %d\n",
    client->irq, ret);
   return ret;
  }
 }


 ret = i2c_smbus_read_byte_data(client, HYM8563_SEC);
 if (ret < 0)
  return ret;

 hym8563->valid = !(ret & HYM8563_SEC_VL);
 dev_dbg(&client->dev, "rtc information is %s\n",
  hym8563->valid ? "valid" : "invalid");

 hym8563->rtc = devm_rtc_device_register(&client->dev, client->name,
      &hym8563_rtc_ops, THIS_MODULE);
 if (IS_ERR(hym8563->rtc))
  return PTR_ERR(hym8563->rtc);


 hym8563->rtc->uie_unsupported = 1;





 return 0;
}
