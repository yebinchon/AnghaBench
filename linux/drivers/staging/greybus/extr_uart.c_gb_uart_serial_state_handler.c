
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_uart_serial_state_request {int control; } ;
struct gb_tty {int ctrlin; TYPE_1__* gbphy_dev; } ;
struct gb_operation {struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_uart_serial_state_request* payload; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int,int) ;
 struct gb_tty* gb_connection_get_data (struct gb_connection*) ;

__attribute__((used)) static int gb_uart_serial_state_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_tty *gb_tty = gb_connection_get_data(connection);
 struct gb_message *request = op->request;
 struct gb_uart_serial_state_request *serial_state;

 if (request->payload_size < sizeof(*serial_state)) {
  dev_err(&gb_tty->gbphy_dev->dev,
   "short serial-state event received (%zu < %zu)\n",
   request->payload_size, sizeof(*serial_state));
  return -EINVAL;
 }

 serial_state = request->payload;
 gb_tty->ctrlin = serial_state->control;

 return 0;
}
