
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;
struct plat_sci_reg {int size; int offset; } ;


 int WARN (int,char*) ;
 int iowrite16 (int,scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 struct plat_sci_reg* sci_getreg (struct uart_port*,int) ;

__attribute__((used)) static void sci_serial_out(struct uart_port *p, int offset, int value)
{
 const struct plat_sci_reg *reg = sci_getreg(p, offset);

 if (reg->size == 8)
  iowrite8(value, p->membase + (reg->offset << p->regshift));
 else if (reg->size == 16)
  iowrite16(value, p->membase + (reg->offset << p->regshift));
 else
  WARN(1, "Invalid register access\n");
}
