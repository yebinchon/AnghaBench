
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; } ;


 int EBUSY ;
 int MAP_SIZE ;
 scalar_t__ request_mem_region (int ,int ,char const*) ;
 char* s3c24xx_serial_portname (struct uart_port*) ;

__attribute__((used)) static int s3c24xx_serial_request_port(struct uart_port *port)
{
 const char *name = s3c24xx_serial_portname(port);
 return request_mem_region(port->mapbase, MAP_SIZE, name) ? 0 : -EBUSY;
}
