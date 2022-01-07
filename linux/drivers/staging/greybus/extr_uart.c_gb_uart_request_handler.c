
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_tty {TYPE_1__* gbphy_dev; } ;
struct gb_operation {int type; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;



 int dev_err (int *,char*,int) ;
 struct gb_tty* gb_connection_get_data (struct gb_connection*) ;
 int gb_uart_receive_credits_handler (struct gb_operation*) ;
 int gb_uart_receive_data_handler (struct gb_operation*) ;
 int gb_uart_serial_state_handler (struct gb_operation*) ;

__attribute__((used)) static int gb_uart_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_tty *gb_tty = gb_connection_get_data(connection);
 int type = op->type;
 int ret;

 switch (type) {
 case 129:
  ret = gb_uart_receive_data_handler(op);
  break;
 case 128:
  ret = gb_uart_serial_state_handler(op);
  break;
 case 130:
  ret = gb_uart_receive_credits_handler(op);
  break;
 default:
  dev_err(&gb_tty->gbphy_dev->dev,
   "unsupported unsolicited request: 0x%02x\n", type);
  ret = -EINVAL;
 }

 return ret;
}
