
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dev; } ;
struct atmel_uart_port {int has_frac_baudrate; int has_hw_timer; int fidi_min; int fidi_max; void* rtor; } ;


 void* ATMEL_UA_RTOR ;
 int ATMEL_US_NAME ;
 void* ATMEL_US_RTOR ;
 int ATMEL_US_VERSION ;
 int atmel_uart_readl (struct uart_port*,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_get_ip_name(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 int name = atmel_uart_readl(port, ATMEL_US_NAME);
 u32 version;
 u32 usart, dbgu_uart, new_uart;

 usart = 0x55534152;
 dbgu_uart = 0x44424755;
 new_uart = 0x55415254;







 atmel_port->has_frac_baudrate = 0;
 atmel_port->has_hw_timer = 0;

 if (name == new_uart) {
  dev_dbg(port->dev, "Uart with hw timer");
  atmel_port->has_hw_timer = 1;
  atmel_port->rtor = ATMEL_UA_RTOR;
 } else if (name == usart) {
  dev_dbg(port->dev, "Usart\n");
  atmel_port->has_frac_baudrate = 1;
  atmel_port->has_hw_timer = 1;
  atmel_port->rtor = ATMEL_US_RTOR;
  version = atmel_uart_readl(port, ATMEL_US_VERSION);
  switch (version) {
  case 0x814:

  case 0x701:
   atmel_port->fidi_min = 3;
   atmel_port->fidi_max = 65535;
   break;
  case 0x502:
   atmel_port->fidi_min = 3;
   atmel_port->fidi_max = 2047;
   break;
  default:
   atmel_port->fidi_min = 1;
   atmel_port->fidi_max = 2047;
  }
 } else if (name == dbgu_uart) {
  dev_dbg(port->dev, "Dbgu or uart without hw timer\n");
 } else {

  version = atmel_uart_readl(port, ATMEL_US_VERSION);
  switch (version) {
  case 0x302:
  case 0x10213:
  case 0x10302:
   dev_dbg(port->dev, "This version is usart\n");
   atmel_port->has_frac_baudrate = 1;
   atmel_port->has_hw_timer = 1;
   atmel_port->rtor = ATMEL_US_RTOR;
   break;
  case 0x203:
  case 0x10202:
   dev_dbg(port->dev, "This version is uart\n");
   break;
  default:
   dev_err(port->dev, "Not supported ip name nor version, set to uart\n");
  }
 }
}
