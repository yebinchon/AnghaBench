
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_uart_set_control_line_state_request {int control; } ;
struct gb_tty {int connection; } ;
typedef int request ;


 int GB_UART_TYPE_SET_CONTROL_LINE_STATE ;
 int gb_operation_sync (int ,int ,struct gb_uart_set_control_line_state_request*,int,int *,int ) ;

__attribute__((used)) static int send_control(struct gb_tty *gb_tty, u8 control)
{
 struct gb_uart_set_control_line_state_request request;

 request.control = control;
 return gb_operation_sync(gb_tty->connection,
     GB_UART_TYPE_SET_CONTROL_LINE_STATE,
     &request, sizeof(request), ((void*)0), 0);
}
