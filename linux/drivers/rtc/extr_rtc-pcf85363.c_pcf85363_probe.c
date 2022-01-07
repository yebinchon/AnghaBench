
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct pcf85x63_config {int num_nvram; int regmap; } ;
struct pcf85363 {TYPE_1__* rtc; TYPE_1__* regmap; } ;
struct nvmem_config {char* name; int word_size; int stride; int size; struct pcf85363* priv; int reg_write; int reg_read; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;
struct TYPE_9__ {int * ops; int range_max; int range_min; } ;


 int CTRL_FLAGS ;
 int CTRL_PIN_IO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (TYPE_1__*) ;

 int PIN_IO_INTAPM ;
 int PIN_IO_INTA_OUT ;
 int PTR_ERR (TYPE_1__*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct pcf85363* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct i2c_client*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf85363*) ;
 void* of_device_get_match_data (int *) ;


 int pcf85363_rtc_handle_irq ;


 struct pcf85x63_config pcf_85363_config ;
 int regmap_update_bits (TYPE_1__*,int ,int ,int ) ;
 int regmap_write (TYPE_1__*,int ,int ) ;
 int rtc_nvmem_register (TYPE_1__*,struct nvmem_config*) ;
 int rtc_ops ;
 int rtc_ops_alarm ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int pcf85363_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct pcf85363 *pcf85363;
 const struct pcf85x63_config *config = &pcf_85363_config;
 const void *data = of_device_get_match_data(&client->dev);
 static struct nvmem_config nvmem_cfg[] = {
  {
   .name = "pcf85x63-",
   .word_size = 1,
   .stride = 1,
   .size = 1,
   .reg_read = 129,
   .reg_write = 128,
  }, {
   .name = "pcf85363-",
   .word_size = 1,
   .stride = 1,
   .size = 132,
   .reg_read = 131,
   .reg_write = 130,
  },
 };
 int ret, i;

 if (data)
  config = data;

 pcf85363 = devm_kzalloc(&client->dev, sizeof(struct pcf85363),
    GFP_KERNEL);
 if (!pcf85363)
  return -ENOMEM;

 pcf85363->regmap = devm_regmap_init_i2c(client, &config->regmap);
 if (IS_ERR(pcf85363->regmap)) {
  dev_err(&client->dev, "regmap allocation failed\n");
  return PTR_ERR(pcf85363->regmap);
 }

 i2c_set_clientdata(client, pcf85363);

 pcf85363->rtc = devm_rtc_allocate_device(&client->dev);
 if (IS_ERR(pcf85363->rtc))
  return PTR_ERR(pcf85363->rtc);

 pcf85363->rtc->ops = &rtc_ops;
 pcf85363->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 pcf85363->rtc->range_max = RTC_TIMESTAMP_END_2099;

 if (client->irq > 0) {
  regmap_write(pcf85363->regmap, CTRL_FLAGS, 0);
  regmap_update_bits(pcf85363->regmap, CTRL_PIN_IO,
       PIN_IO_INTA_OUT, PIN_IO_INTAPM);
  ret = devm_request_threaded_irq(&client->dev, client->irq,
      ((void*)0), pcf85363_rtc_handle_irq,
      IRQF_TRIGGER_LOW | IRQF_ONESHOT,
      "pcf85363", client);
  if (ret)
   dev_warn(&client->dev, "unable to request IRQ, alarms disabled\n");
  else
   pcf85363->rtc->ops = &rtc_ops_alarm;
 }

 ret = rtc_register_device(pcf85363->rtc);

 for (i = 0; i < config->num_nvram; i++) {
  nvmem_cfg[i].priv = pcf85363;
  rtc_nvmem_register(pcf85363->rtc, &nvmem_cfg[i]);
 }

 return ret;
}
