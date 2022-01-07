
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; } ;
 int writeb (int,int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void serial8250_em_serial_out(struct uart_port *p, int offset, int value)
{
 switch (offset) {
 case 128:
  writeb(value, p->membase);
  break;
 case 133:
 case 131:
 case 130:
 case 129:
  writel(value, p->membase + ((offset + 1) << 2));
  break;
 case 132:
  value &= 0x0f;

 case 135:
 case 134:
  writel(value, p->membase + (offset << 2));
 }
}
