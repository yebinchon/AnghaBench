
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_uart_serial_flush_request {int flags; } ;
struct gb_tty {int connection; } ;
typedef int request ;


 int GB_UART_TYPE_FLUSH_FIFOS ;
 int gb_operation_sync (int ,int ,struct gb_uart_serial_flush_request*,int,int *,int ) ;

__attribute__((used)) static int gb_uart_flush(struct gb_tty *gb_tty, u8 flags)
{
 struct gb_uart_serial_flush_request request;

 request.flags = flags;
 return gb_operation_sync(gb_tty->connection, GB_UART_TYPE_FLUSH_FIFOS,
     &request, sizeof(request), ((void*)0), 0);
}
