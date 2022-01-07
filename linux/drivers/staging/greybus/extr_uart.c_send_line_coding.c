
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_uart_set_line_coding_request {int dummy; } ;
struct gb_tty {int connection; int line_coding; } ;
typedef int request ;


 int GB_UART_TYPE_SET_LINE_CODING ;
 int gb_operation_sync (int ,int ,struct gb_uart_set_line_coding_request*,int,int *,int ) ;
 int memcpy (struct gb_uart_set_line_coding_request*,int *,int) ;

__attribute__((used)) static int send_line_coding(struct gb_tty *tty)
{
 struct gb_uart_set_line_coding_request request;

 memcpy(&request, &tty->line_coding,
        sizeof(tty->line_coding));
 return gb_operation_sync(tty->connection, GB_UART_TYPE_SET_LINE_CODING,
     &request, sizeof(request), ((void*)0), 0);
}
