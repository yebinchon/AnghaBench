
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_7__ {int * tx_buf; int * rx_buf; } ;
struct olpc_xo175_ec {int tx_buf; TYPE_2__ xfer; int rx_buf; TYPE_3__* pwrbtn; scalar_t__ logbuf_len; int cmd_done; int cmd_state; int cmd_state_lock; struct spi_device* spi; int gpio_cmd; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {char* name; TYPE_1__ dev; } ;


 int CMD_STATE_IDLE ;
 int EBUSY ;
 int EC_ALL_EVENTS ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_POWER ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int devm_gpiod_get (int *,char*,int ) ;
 TYPE_3__* devm_input_allocate_device (int *) ;
 struct olpc_xo175_ec* devm_kzalloc (int *,int,int ) ;
 int init_completion (int *) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_capability (TYPE_3__*,int ,int ) ;
 scalar_t__ olpc_ec ;
 int olpc_ec_driver_register (int *,struct olpc_xo175_ec*) ;
 int olpc_xo175_ec_driver ;
 int * olpc_xo175_ec_power_off ;
 int olpc_xo175_ec_read_packet (struct olpc_xo175_ec*) ;
 int olpc_xo175_ec_set_event_mask (int ) ;
 scalar_t__ platform_device_register_resndata (int *,char*,int,int *,int ,int *,int ) ;
 int * pm_power_off ;
 int spi_set_drvdata (struct spi_device*,struct olpc_xo175_ec*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int olpc_xo175_ec_probe(struct spi_device *spi)
{
 struct olpc_xo175_ec *priv;
 int ret;

 if (olpc_ec) {
  dev_err(&spi->dev, "OLPC EC already registered.\n");
  return -EBUSY;
 }

 priv = devm_kzalloc(&spi->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->gpio_cmd = devm_gpiod_get(&spi->dev, "cmd", GPIOD_OUT_LOW);
 if (IS_ERR(priv->gpio_cmd)) {
  dev_err(&spi->dev, "failed to get cmd gpio: %ld\n",
     PTR_ERR(priv->gpio_cmd));
  return PTR_ERR(priv->gpio_cmd);
 }

 priv->spi = spi;

 spin_lock_init(&priv->cmd_state_lock);
 priv->cmd_state = CMD_STATE_IDLE;
 init_completion(&priv->cmd_done);

 priv->logbuf_len = 0;


 priv->pwrbtn = devm_input_allocate_device(&spi->dev);
 if (!priv->pwrbtn)
  return -ENOMEM;
 priv->pwrbtn->name = "Power Button";
 priv->pwrbtn->dev.parent = &spi->dev;
 input_set_capability(priv->pwrbtn, EV_KEY, KEY_POWER);
 ret = input_register_device(priv->pwrbtn);
 if (ret) {
  dev_err(&spi->dev, "error registering input device: %d\n", ret);
  return ret;
 }

 spi_set_drvdata(spi, priv);

 priv->xfer.rx_buf = &priv->rx_buf;
 priv->xfer.tx_buf = &priv->tx_buf;

 olpc_xo175_ec_read_packet(priv);

 olpc_ec_driver_register(&olpc_xo175_ec_driver, priv);
 olpc_ec = platform_device_register_resndata(&spi->dev, "olpc-ec", -1,
       ((void*)0), 0, ((void*)0), 0);


 olpc_xo175_ec_set_event_mask(EC_ALL_EVENTS);

 if (pm_power_off == ((void*)0))
  pm_power_off = olpc_xo175_ec_power_off;

 dev_info(&spi->dev, "OLPC XO-1.75 Embedded Controller driver\n");

 return 0;
}
