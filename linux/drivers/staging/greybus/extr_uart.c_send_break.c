
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gb_uart_set_break_request {int state; } ;
struct gb_tty {int connection; TYPE_1__* gbphy_dev; } ;
typedef int request ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int GB_UART_TYPE_SEND_BREAK ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (int ,int ,struct gb_uart_set_break_request*,int,int *,int ) ;

__attribute__((used)) static int send_break(struct gb_tty *gb_tty, u8 state)
{
 struct gb_uart_set_break_request request;

 if ((state != 0) && (state != 1)) {
  dev_err(&gb_tty->gbphy_dev->dev,
   "invalid break state of %d\n", state);
  return -EINVAL;
 }

 request.state = state;
 return gb_operation_sync(gb_tty->connection, GB_UART_TYPE_SEND_BREAK,
     &request, sizeof(request), ((void*)0), 0);
}
