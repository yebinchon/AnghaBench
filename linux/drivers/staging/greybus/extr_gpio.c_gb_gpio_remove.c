
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_device {int dummy; } ;
struct gb_gpio_controller {struct gb_gpio_controller* lines; int chip; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;


 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_disable_rx (struct gb_connection*) ;
 struct gb_gpio_controller* gb_gbphy_get_data (struct gbphy_device*) ;
 int gbphy_runtime_get_noresume (struct gbphy_device*) ;
 int gbphy_runtime_get_sync (struct gbphy_device*) ;
 int gpiochip_remove (int *) ;
 int kfree (struct gb_gpio_controller*) ;

__attribute__((used)) static void gb_gpio_remove(struct gbphy_device *gbphy_dev)
{
 struct gb_gpio_controller *ggc = gb_gbphy_get_data(gbphy_dev);
 struct gb_connection *connection = ggc->connection;
 int ret;

 ret = gbphy_runtime_get_sync(gbphy_dev);
 if (ret)
  gbphy_runtime_get_noresume(gbphy_dev);

 gb_connection_disable_rx(connection);
 gpiochip_remove(&ggc->chip);
 gb_connection_disable(connection);
 gb_connection_destroy(connection);
 kfree(ggc->lines);
 kfree(ggc);
}
