
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_pmac_port {int data_reg; } ;


 int readb (int ) ;

__attribute__((used)) static inline u8 read_zsdata(struct uart_pmac_port *port)
{
 return readb(port->data_reg);
}
