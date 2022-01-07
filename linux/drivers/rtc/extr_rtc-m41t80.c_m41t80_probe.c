
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct m41t80_data {unsigned long features; TYPE_1__* rtc; struct i2c_client* client; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_16__ {scalar_t__ of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_2__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {TYPE_2__ dev; } ;
struct TYPE_17__ {int alarm_irq_enable; int set_alarm; int read_alarm; } ;
struct TYPE_15__ {int uie_unsupported; TYPE_4__* ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int M41T80_ALHOUR_HT ;
 int M41T80_FEATURE_HT ;
 int M41T80_FEATURE_SQ ;
 int M41T80_REG_ALARM_HOUR ;
 int M41T80_REG_SEC ;
 int M41T80_SEC_ST ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_init_wakeup (TYPE_2__*,int) ;
 struct m41t80_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_2__*,scalar_t__,int *,int ,int,char*,struct i2c_client*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_2__*) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct m41t80_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int m41t80_alarm_irq_enable ;
 int m41t80_handle_irq ;
 int m41t80_read_alarm ;
 TYPE_4__ m41t80_rtc_ops ;
 int m41t80_rtc_read_time (TYPE_2__*,struct rtc_time*) ;
 int m41t80_set_alarm ;
 int m41t80_sqw_register_clk (struct m41t80_data*) ;
 int misc_deregister (int *) ;
 int misc_register (int *) ;
 scalar_t__ of_device_get_match_data (TYPE_2__*) ;
 int of_property_read_bool (scalar_t__,char*) ;
 int register_reboot_notifier (int *) ;
 int rtc_register_device (TYPE_1__*) ;
 struct i2c_client* save_client ;
 int wdt_dev ;
 int wdt_notifier ;

__attribute__((used)) static int m41t80_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 int rc = 0;
 struct rtc_time tm;
 struct m41t80_data *m41t80_data = ((void*)0);
 bool wakeup_source = 0;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_I2C_BLOCK |
         I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(&adapter->dev, "doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\n");
  return -ENODEV;
 }

 m41t80_data = devm_kzalloc(&client->dev, sizeof(*m41t80_data),
       GFP_KERNEL);
 if (!m41t80_data)
  return -ENOMEM;

 m41t80_data->client = client;
 if (client->dev.of_node)
  m41t80_data->features = (unsigned long)
   of_device_get_match_data(&client->dev);
 else
  m41t80_data->features = id->driver_data;
 i2c_set_clientdata(client, m41t80_data);

 m41t80_data->rtc = devm_rtc_allocate_device(&client->dev);
 if (IS_ERR(m41t80_data->rtc))
  return PTR_ERR(m41t80_data->rtc);





 if (client->irq > 0) {
  rc = devm_request_threaded_irq(&client->dev, client->irq,
            ((void*)0), m41t80_handle_irq,
            IRQF_TRIGGER_LOW | IRQF_ONESHOT,
            "m41t80", client);
  if (rc) {
   dev_warn(&client->dev, "unable to request IRQ, alarms disabled\n");
   client->irq = 0;
   wakeup_source = 0;
  }
 }
 if (client->irq > 0 || wakeup_source) {
  m41t80_rtc_ops.read_alarm = m41t80_read_alarm;
  m41t80_rtc_ops.set_alarm = m41t80_set_alarm;
  m41t80_rtc_ops.alarm_irq_enable = m41t80_alarm_irq_enable;

  device_init_wakeup(&client->dev, 1);
 }

 m41t80_data->rtc->ops = &m41t80_rtc_ops;

 if (client->irq <= 0) {

  m41t80_data->rtc->uie_unsupported = 1;
 }


 rc = i2c_smbus_read_byte_data(client, M41T80_REG_ALARM_HOUR);

 if (rc >= 0 && rc & M41T80_ALHOUR_HT) {
  if (m41t80_data->features & M41T80_FEATURE_HT) {
   m41t80_rtc_read_time(&client->dev, &tm);
   dev_info(&client->dev, "HT bit was set!\n");
   dev_info(&client->dev, "Power Down at %ptR\n", &tm);
  }
  rc = i2c_smbus_write_byte_data(client, M41T80_REG_ALARM_HOUR,
            rc & ~M41T80_ALHOUR_HT);
 }

 if (rc < 0) {
  dev_err(&client->dev, "Can't clear HT bit\n");
  return rc;
 }


 rc = i2c_smbus_read_byte_data(client, M41T80_REG_SEC);

 if (rc >= 0 && rc & M41T80_SEC_ST)
  rc = i2c_smbus_write_byte_data(client, M41T80_REG_SEC,
            rc & ~M41T80_SEC_ST);
 if (rc < 0) {
  dev_err(&client->dev, "Can't clear ST bit\n");
  return rc;
 }
 rc = rtc_register_device(m41t80_data->rtc);
 if (rc)
  return rc;

 return 0;
}
