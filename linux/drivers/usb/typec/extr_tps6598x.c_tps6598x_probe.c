
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pd_revision; void* data; void* type; int dr_set; int pr_set; int prefer_role; int revision; } ;
struct tps6598x {int i2c_protocol; int port; TYPE_1__ typec_cap; int regmap; int * dev; int lock; } ;
struct i2c_client {int dev; int irq; int adapter; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;







 int TPS_REG_STATUS ;
 int TPS_REG_SYSTEM_CONF ;
 int TPS_REG_VID ;
 int TPS_STATUS_PLUG_PRESENT ;
 int TPS_SYSCONF_PORTINFO (int) ;
 int TYPEC_NO_PREFERRED_ROLE ;
 void* TYPEC_PORT_DFP ;
 void* TYPEC_PORT_DRD ;
 void* TYPEC_PORT_DRP ;
 void* TYPEC_PORT_SNK ;
 void* TYPEC_PORT_SRC ;
 void* TYPEC_PORT_UFP ;
 int USB_TYPEC_REV_1_2 ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 struct tps6598x* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct tps6598x*) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps6598x*) ;
 int mutex_init (int *) ;
 int tps6598x_check_mode (struct tps6598x*) ;
 int tps6598x_connect (struct tps6598x*,int) ;
 int tps6598x_disconnect (struct tps6598x*,int ) ;
 int tps6598x_dr_set ;
 int tps6598x_interrupt ;
 int tps6598x_pr_set ;
 int tps6598x_read32 (struct tps6598x*,int ,int*) ;
 int tps6598x_regmap_config ;
 int typec_register_port (int *,TYPE_1__*) ;
 int typec_unregister_port (int ) ;

__attribute__((used)) static int tps6598x_probe(struct i2c_client *client)
{
 struct tps6598x *tps;
 u32 status;
 u32 conf;
 u32 vid;
 int ret;

 tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
 if (!tps)
  return -ENOMEM;

 mutex_init(&tps->lock);
 tps->dev = &client->dev;

 tps->regmap = devm_regmap_init_i2c(client, &tps6598x_regmap_config);
 if (IS_ERR(tps->regmap))
  return PTR_ERR(tps->regmap);

 ret = tps6598x_read32(tps, TPS_REG_VID, &vid);
 if (ret < 0 || !vid)
  return -ENODEV;
 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  tps->i2c_protocol = 1;


 ret = tps6598x_check_mode(tps);
 if (ret)
  return ret;

 ret = tps6598x_read32(tps, TPS_REG_STATUS, &status);
 if (ret < 0)
  return ret;

 ret = tps6598x_read32(tps, TPS_REG_SYSTEM_CONF, &conf);
 if (ret < 0)
  return ret;

 tps->typec_cap.revision = USB_TYPEC_REV_1_2;
 tps->typec_cap.pd_revision = 0x200;
 tps->typec_cap.prefer_role = TYPEC_NO_PREFERRED_ROLE;
 tps->typec_cap.pr_set = tps6598x_pr_set;
 tps->typec_cap.dr_set = tps6598x_dr_set;

 switch (TPS_SYSCONF_PORTINFO(conf)) {
 case 129:
 case 130:
  tps->typec_cap.type = TYPEC_PORT_SNK;
  tps->typec_cap.data = TYPEC_PORT_UFP;
  break;
 case 131:
 case 133:
  tps->typec_cap.type = TYPEC_PORT_DRP;
  tps->typec_cap.data = TYPEC_PORT_DRD;
  break;
 case 132:
  tps->typec_cap.type = TYPEC_PORT_DRP;
  tps->typec_cap.data = TYPEC_PORT_UFP;
  break;
 case 134:
  tps->typec_cap.type = TYPEC_PORT_DRP;
  tps->typec_cap.data = TYPEC_PORT_DFP;
  break;
 case 128:
  tps->typec_cap.type = TYPEC_PORT_SRC;
  tps->typec_cap.data = TYPEC_PORT_DFP;
  break;
 default:
  return -ENODEV;
 }

 tps->port = typec_register_port(&client->dev, &tps->typec_cap);
 if (IS_ERR(tps->port))
  return PTR_ERR(tps->port);

 if (status & TPS_STATUS_PLUG_PRESENT) {
  ret = tps6598x_connect(tps, status);
  if (ret)
   dev_err(&client->dev, "failed to register partner\n");
 }

 ret = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
     tps6598x_interrupt,
     IRQF_SHARED | IRQF_ONESHOT,
     dev_name(&client->dev), tps);
 if (ret) {
  tps6598x_disconnect(tps, 0);
  typec_unregister_port(tps->port);
  return ret;
 }

 i2c_set_clientdata(client, tps);

 return 0;
}
