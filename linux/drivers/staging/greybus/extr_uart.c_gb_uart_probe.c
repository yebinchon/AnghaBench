
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int dev; TYPE_1__* cport_desc; int bundle; } ;
struct gb_uart_send_data_request {int dummy; } ;
struct TYPE_7__ {int * ops; } ;
struct TYPE_6__ {int data_bits; int parity; int format; int rate; } ;
struct gb_tty {size_t buffer_payload_max; int minor; struct gb_tty* buffer; int write_fifo; TYPE_3__ port; TYPE_2__ line_coding; int ctrlout; struct gbphy_device* gbphy_dev; struct gb_connection* connection; int mutex; int wioctl; int read_lock; int write_lock; int credits_complete; int credits; int tx_work; } ;
struct gb_connection {int dummy; } ;
typedef struct gb_connection device ;
struct TYPE_5__ {int id; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int GB_SERIAL_1_STOP_BITS ;
 int GB_SERIAL_NO_PARITY ;
 int GB_UART_FIRMWARE_CREDITS ;
 int GB_UART_WRITE_FIFO_SIZE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int alloc_minor (struct gb_tty*) ;
 int cpu_to_le32 (int) ;
 int dev_err (int *,char*) ;
 struct gb_connection* gb_connection_create (int ,int ,int ) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_enable_tx (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_tty*) ;
 int gb_gbphy_set_data (struct gbphy_device*,struct gb_tty*) ;
 size_t gb_operation_get_payload_size_max (struct gb_connection*) ;
 int gb_port_ops ;
 int gb_tty_driver ;
 int gb_uart_request_handler ;
 int gb_uart_tx_write_work ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int *,int ,int ) ;
 int kfifo_free (int *) ;
 int kfree (struct gb_tty*) ;
 void* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;
 int release_minor (struct gb_tty*) ;
 int send_control (struct gb_tty*,int ) ;
 int send_line_coding (struct gb_tty*) ;
 int spin_lock_init (int *) ;
 int tty_port_init (TYPE_3__*) ;
 struct gb_connection* tty_port_register_device (TYPE_3__*,int ,int,int *) ;

__attribute__((used)) static int gb_uart_probe(struct gbphy_device *gbphy_dev,
    const struct gbphy_device_id *id)
{
 struct gb_connection *connection;
 size_t max_payload;
 struct gb_tty *gb_tty;
 struct device *tty_dev;
 int retval;
 int minor;

 gb_tty = kzalloc(sizeof(*gb_tty), GFP_KERNEL);
 if (!gb_tty)
  return -ENOMEM;

 connection = gb_connection_create(gbphy_dev->bundle,
       le16_to_cpu(gbphy_dev->cport_desc->id),
       gb_uart_request_handler);
 if (IS_ERR(connection)) {
  retval = PTR_ERR(connection);
  goto exit_tty_free;
 }

 max_payload = gb_operation_get_payload_size_max(connection);
 if (max_payload < sizeof(struct gb_uart_send_data_request)) {
  retval = -EINVAL;
  goto exit_connection_destroy;
 }

 gb_tty->buffer_payload_max = max_payload -
   sizeof(struct gb_uart_send_data_request);

 gb_tty->buffer = kzalloc(gb_tty->buffer_payload_max, GFP_KERNEL);
 if (!gb_tty->buffer) {
  retval = -ENOMEM;
  goto exit_connection_destroy;
 }

 INIT_WORK(&gb_tty->tx_work, gb_uart_tx_write_work);

 retval = kfifo_alloc(&gb_tty->write_fifo, GB_UART_WRITE_FIFO_SIZE,
        GFP_KERNEL);
 if (retval)
  goto exit_buf_free;

 gb_tty->credits = GB_UART_FIRMWARE_CREDITS;
 init_completion(&gb_tty->credits_complete);

 minor = alloc_minor(gb_tty);
 if (minor < 0) {
  if (minor == -ENOSPC) {
   dev_err(&gbphy_dev->dev,
    "no more free minor numbers\n");
   retval = -ENODEV;
  } else {
   retval = minor;
  }
  goto exit_kfifo_free;
 }

 gb_tty->minor = minor;
 spin_lock_init(&gb_tty->write_lock);
 spin_lock_init(&gb_tty->read_lock);
 init_waitqueue_head(&gb_tty->wioctl);
 mutex_init(&gb_tty->mutex);

 tty_port_init(&gb_tty->port);
 gb_tty->port.ops = &gb_port_ops;

 gb_tty->connection = connection;
 gb_tty->gbphy_dev = gbphy_dev;
 gb_connection_set_data(connection, gb_tty);
 gb_gbphy_set_data(gbphy_dev, gb_tty);

 retval = gb_connection_enable_tx(connection);
 if (retval)
  goto exit_release_minor;

 send_control(gb_tty, gb_tty->ctrlout);


 gb_tty->line_coding.rate = cpu_to_le32(9600);
 gb_tty->line_coding.format = GB_SERIAL_1_STOP_BITS;
 gb_tty->line_coding.parity = GB_SERIAL_NO_PARITY;
 gb_tty->line_coding.data_bits = 8;
 send_line_coding(gb_tty);

 retval = gb_connection_enable(connection);
 if (retval)
  goto exit_connection_disable;

 tty_dev = tty_port_register_device(&gb_tty->port, gb_tty_driver, minor,
        &gbphy_dev->dev);
 if (IS_ERR(tty_dev)) {
  retval = PTR_ERR(tty_dev);
  goto exit_connection_disable;
 }

 gbphy_runtime_put_autosuspend(gbphy_dev);
 return 0;

exit_connection_disable:
 gb_connection_disable(connection);
exit_release_minor:
 release_minor(gb_tty);
exit_kfifo_free:
 kfifo_free(&gb_tty->write_fifo);
exit_buf_free:
 kfree(gb_tty->buffer);
exit_connection_destroy:
 gb_connection_destroy(connection);
exit_tty_free:
 kfree(gb_tty);

 return retval;
}
