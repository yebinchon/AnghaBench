
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {TYPE_1__* adapter; int irq; struct device dev; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response_i2c {int dummy; } ;
struct ec_host_request_i2c {int dummy; } ;
struct cros_ec_device {int din_size; int dout_size; int phys_name; int pkt_xfer; int cmd_xfer; int irq; struct i2c_client* priv; struct device* dev; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_cmd_xfer_i2c ;
 int cros_ec_pkt_xfer_i2c ;
 int cros_ec_register (struct cros_ec_device*) ;
 int dev_err (struct device*,char*) ;
 struct cros_ec_device* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct cros_ec_device*) ;

__attribute__((used)) static int cros_ec_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *dev_id)
{
 struct device *dev = &client->dev;
 struct cros_ec_device *ec_dev = ((void*)0);
 int err;

 ec_dev = devm_kzalloc(dev, sizeof(*ec_dev), GFP_KERNEL);
 if (!ec_dev)
  return -ENOMEM;

 i2c_set_clientdata(client, ec_dev);
 ec_dev->dev = dev;
 ec_dev->priv = client;
 ec_dev->irq = client->irq;
 ec_dev->cmd_xfer = cros_ec_cmd_xfer_i2c;
 ec_dev->pkt_xfer = cros_ec_pkt_xfer_i2c;
 ec_dev->phys_name = client->adapter->name;
 ec_dev->din_size = sizeof(struct ec_host_response_i2c) +
      sizeof(struct ec_response_get_protocol_info);
 ec_dev->dout_size = sizeof(struct ec_host_request_i2c);

 err = cros_ec_register(ec_dev);
 if (err) {
  dev_err(dev, "cannot register EC\n");
  return err;
 }

 return 0;
}
