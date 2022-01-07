
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct gbphy_device {int dummy; } ;
struct gb_tty {int disconnected; struct gb_tty* buffer; int write_fifo; int port; int minor; int mutex; int wioctl; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;


 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_disable_rx (struct gb_connection*) ;
 struct gb_tty* gb_gbphy_get_data (struct gbphy_device*) ;
 int gb_tty_driver ;
 int gbphy_runtime_get_noresume (struct gbphy_device*) ;
 int gbphy_runtime_get_sync (struct gbphy_device*) ;
 int kfifo_free (int *) ;
 int kfree (struct gb_tty*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_minor (struct gb_tty*) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_destroy (int *) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_unregister_device (int ,int ) ;
 int tty_vhangup (struct tty_struct*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void gb_uart_remove(struct gbphy_device *gbphy_dev)
{
 struct gb_tty *gb_tty = gb_gbphy_get_data(gbphy_dev);
 struct gb_connection *connection = gb_tty->connection;
 struct tty_struct *tty;
 int ret;

 ret = gbphy_runtime_get_sync(gbphy_dev);
 if (ret)
  gbphy_runtime_get_noresume(gbphy_dev);

 mutex_lock(&gb_tty->mutex);
 gb_tty->disconnected = 1;

 wake_up_all(&gb_tty->wioctl);
 mutex_unlock(&gb_tty->mutex);

 tty = tty_port_tty_get(&gb_tty->port);
 if (tty) {
  tty_vhangup(tty);
  tty_kref_put(tty);
 }

 gb_connection_disable_rx(connection);
 tty_unregister_device(gb_tty_driver, gb_tty->minor);



 gb_connection_disable(connection);
 tty_port_destroy(&gb_tty->port);
 gb_connection_destroy(connection);
 release_minor(gb_tty);
 kfifo_free(&gb_tty->write_fifo);
 kfree(gb_tty->buffer);
 kfree(gb_tty);
}
