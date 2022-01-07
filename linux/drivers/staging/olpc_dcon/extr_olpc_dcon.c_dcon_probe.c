
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_9__ {int priority; int notifier_call; } ;
struct dcon_priv {int bl_val; TYPE_1__ reboot_nb; int * bl_dev; int fbinfo; int switch_source; int waitq; struct i2c_client* client; } ;
struct TYPE_11__ {int brightness; } ;
struct TYPE_10__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int DCON_IRQ ;
 int DCON_REG_BRIGHT ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int atomic_notifier_chain_register (int *,int *) ;
 int * backlight_device_register (char*,int *,struct dcon_priv*,int *,TYPE_7__*) ;
 int dcon_bl_ops ;
 TYPE_7__ dcon_bl_props ;
 TYPE_2__* dcon_device ;
 int * dcon_device_files ;
 int dcon_hw_init (struct dcon_priv*,int) ;
 int dcon_panic_nb ;
 int dcon_read (struct dcon_priv*,int ) ;
 int dcon_reboot_notify ;
 int dcon_source_switch ;
 int dev_err (int *,char*,...) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int free_irq (int ,struct dcon_priv*) ;
 int i2c_set_clientdata (struct i2c_client*,struct dcon_priv*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dcon_priv*) ;
 struct dcon_priv* kzalloc (int,int ) ;
 int num_registered_fb ;
 int panic_notifier_list ;
 int pdata ;
 int platform_device_add (TYPE_2__*) ;
 TYPE_2__* platform_device_alloc (char*,int) ;
 int platform_device_unregister (TYPE_2__*) ;
 int platform_set_drvdata (TYPE_2__*,struct dcon_priv*) ;
 int pr_err (char*) ;
 int register_reboot_notifier (TYPE_1__*) ;
 int * registered_fb ;

__attribute__((used)) static int dcon_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct dcon_priv *dcon;
 int rc, i, j;

 if (!pdata)
  return -ENXIO;

 dcon = kzalloc(sizeof(*dcon), GFP_KERNEL);
 if (!dcon)
  return -ENOMEM;

 dcon->client = client;
 init_waitqueue_head(&dcon->waitq);
 INIT_WORK(&dcon->switch_source, dcon_source_switch);
 dcon->reboot_nb.notifier_call = dcon_reboot_notify;
 dcon->reboot_nb.priority = -1;

 i2c_set_clientdata(client, dcon);

 if (num_registered_fb < 1) {
  dev_err(&client->dev, "DCON driver requires a registered fb\n");
  rc = -EIO;
  goto einit;
 }
 dcon->fbinfo = registered_fb[0];

 rc = dcon_hw_init(dcon, 1);
 if (rc)
  goto einit;



 dcon_device = platform_device_alloc("dcon", -1);

 if (!dcon_device) {
  pr_err("Unable to create the DCON device\n");
  rc = -ENOMEM;
  goto eirq;
 }
 rc = platform_device_add(dcon_device);
 platform_set_drvdata(dcon_device, dcon);

 if (rc) {
  pr_err("Unable to add the DCON device\n");
  goto edev;
 }

 for (i = 0; i < ARRAY_SIZE(dcon_device_files); i++) {
  rc = device_create_file(&dcon_device->dev,
     &dcon_device_files[i]);
  if (rc) {
   dev_err(&dcon_device->dev, "Cannot create sysfs file\n");
   goto ecreate;
  }
 }

 dcon->bl_val = dcon_read(dcon, DCON_REG_BRIGHT) & 0x0F;


 dcon_bl_props.brightness = dcon->bl_val;
 dcon->bl_dev = backlight_device_register("dcon-bl", &dcon_device->dev,
       dcon, &dcon_bl_ops,
       &dcon_bl_props);
 if (IS_ERR(dcon->bl_dev)) {
  dev_err(&client->dev, "cannot register backlight dev (%ld)\n",
   PTR_ERR(dcon->bl_dev));
  dcon->bl_dev = ((void*)0);
 }

 register_reboot_notifier(&dcon->reboot_nb);
 atomic_notifier_chain_register(&panic_notifier_list, &dcon_panic_nb);

 return 0;

 ecreate:
 for (j = 0; j < i; j++)
  device_remove_file(&dcon_device->dev, &dcon_device_files[j]);
 edev:
 platform_device_unregister(dcon_device);
 dcon_device = ((void*)0);
 eirq:
 free_irq(DCON_IRQ, dcon);
 einit:
 kfree(dcon);
 return rc;
}
