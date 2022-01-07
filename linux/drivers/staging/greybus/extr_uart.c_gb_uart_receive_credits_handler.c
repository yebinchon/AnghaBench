
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_uart_receive_credits_request {int count; } ;
struct gb_tty {scalar_t__ credits; int credits_complete; int port; int tx_work; int close_pending; TYPE_1__* gbphy_dev; int write_lock; } ;
struct gb_operation {struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_uart_receive_credits_request* payload; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ GB_UART_FIRMWARE_CREDITS ;
 int complete (int *) ;
 int dev_err (int *,char*,unsigned int,...) ;
 struct gb_tty* gb_connection_get_data (struct gb_connection*) ;
 unsigned int le16_to_cpu (int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static int gb_uart_receive_credits_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_tty *gb_tty = gb_connection_get_data(connection);
 struct gb_message *request = op->request;
 struct gb_uart_receive_credits_request *credit_request;
 unsigned long flags;
 unsigned int incoming_credits;
 int ret = 0;

 if (request->payload_size < sizeof(*credit_request)) {
  dev_err(&gb_tty->gbphy_dev->dev,
   "short receive_credits event received (%zu < %zu)\n",
   request->payload_size,
   sizeof(*credit_request));
  return -EINVAL;
 }

 credit_request = request->payload;
 incoming_credits = le16_to_cpu(credit_request->count);

 spin_lock_irqsave(&gb_tty->write_lock, flags);
 gb_tty->credits += incoming_credits;
 if (gb_tty->credits > GB_UART_FIRMWARE_CREDITS) {
  gb_tty->credits -= incoming_credits;
  ret = -EINVAL;
 }
 spin_unlock_irqrestore(&gb_tty->write_lock, flags);

 if (ret) {
  dev_err(&gb_tty->gbphy_dev->dev,
   "invalid number of incoming credits: %d\n",
   incoming_credits);
  return ret;
 }

 if (!gb_tty->close_pending)
  schedule_work(&gb_tty->tx_work);




 tty_port_tty_wakeup(&gb_tty->port);

 if (gb_tty->credits == GB_UART_FIRMWARE_CREDITS)
  complete(&gb_tty->credits_complete);

 return ret;
}
