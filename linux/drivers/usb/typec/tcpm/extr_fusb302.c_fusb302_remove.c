
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {int fwnode; } ;
struct fusb302_chip {int wq; TYPE_1__ tcpc_dev; int tcpm_port; int bc_lvl_handler; int irq_work; int gpio_int_n_irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,struct fusb302_chip*) ;
 int fusb302_debugfs_exit (struct fusb302_chip*) ;
 int fwnode_handle_put (int ) ;
 struct fusb302_chip* i2c_get_clientdata (struct i2c_client*) ;
 int tcpm_unregister_port (int ) ;

__attribute__((used)) static int fusb302_remove(struct i2c_client *client)
{
 struct fusb302_chip *chip = i2c_get_clientdata(client);

 disable_irq_wake(chip->gpio_int_n_irq);
 free_irq(chip->gpio_int_n_irq, chip);
 cancel_work_sync(&chip->irq_work);
 cancel_delayed_work_sync(&chip->bc_lvl_handler);
 tcpm_unregister_port(chip->tcpm_port);
 fwnode_handle_put(chip->tcpc_dev.fwnode);
 destroy_workqueue(chip->wq);
 fusb302_debugfs_exit(chip);

 return 0;
}
