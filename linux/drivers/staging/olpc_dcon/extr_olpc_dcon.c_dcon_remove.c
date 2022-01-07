
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct dcon_priv {int switch_source; int bl_dev; int reboot_nb; } ;


 int DCON_IRQ ;
 int atomic_notifier_chain_unregister (int *,int *) ;
 int backlight_device_unregister (int ) ;
 int cancel_work_sync (int *) ;
 scalar_t__ dcon_device ;
 int dcon_panic_nb ;
 int free_irq (int ,struct dcon_priv*) ;
 struct dcon_priv* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct dcon_priv*) ;
 int panic_notifier_list ;
 int platform_device_unregister (scalar_t__) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int dcon_remove(struct i2c_client *client)
{
 struct dcon_priv *dcon = i2c_get_clientdata(client);

 unregister_reboot_notifier(&dcon->reboot_nb);
 atomic_notifier_chain_unregister(&panic_notifier_list, &dcon_panic_nb);

 free_irq(DCON_IRQ, dcon);

 backlight_device_unregister(dcon->bl_dev);

 if (dcon_device)
  platform_device_unregister(dcon_device);
 cancel_work_sync(&dcon->switch_source);

 kfree(dcon);

 return 0;
}
