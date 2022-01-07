
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microread_i2c_phy {int hdev; struct i2c_client* i2c_dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int LLC_SHDLC_NAME ;
 int MICROREAD_I2C_DRIVER_NAME ;
 int MICROREAD_I2C_FRAME_HEADROOM ;
 int MICROREAD_I2C_FRAME_TAILROOM ;
 int MICROREAD_I2C_LLC_MAX_PAYLOAD ;
 int dev_dbg (int *,char*,struct i2c_client*) ;
 struct microread_i2c_phy* devm_kzalloc (int *,int,int ) ;
 int free_irq (int ,struct microread_i2c_phy*) ;
 int i2c_phy_ops ;
 int i2c_set_clientdata (struct i2c_client*,struct microread_i2c_phy*) ;
 int microread_i2c_irq_thread_fn ;
 int microread_probe (struct microread_i2c_phy*,int *,int ,int ,int ,int ,int *) ;
 int nfc_err (int *,char*) ;
 int nfc_info (int *,char*) ;
 int request_threaded_irq (int ,int *,int ,int,int ,struct microread_i2c_phy*) ;

__attribute__((used)) static int microread_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct microread_i2c_phy *phy;
 int r;

 dev_dbg(&client->dev, "client %p\n", client);

 phy = devm_kzalloc(&client->dev, sizeof(struct microread_i2c_phy),
      GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 i2c_set_clientdata(client, phy);
 phy->i2c_dev = client;

 r = request_threaded_irq(client->irq, ((void*)0), microread_i2c_irq_thread_fn,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     MICROREAD_I2C_DRIVER_NAME, phy);
 if (r) {
  nfc_err(&client->dev, "Unable to register IRQ handler\n");
  return r;
 }

 r = microread_probe(phy, &i2c_phy_ops, LLC_SHDLC_NAME,
       MICROREAD_I2C_FRAME_HEADROOM,
       MICROREAD_I2C_FRAME_TAILROOM,
       MICROREAD_I2C_LLC_MAX_PAYLOAD, &phy->hdev);
 if (r < 0)
  goto err_irq;

 nfc_info(&client->dev, "Probed\n");

 return 0;

err_irq:
 free_irq(client->irq, phy);

 return r;
}
