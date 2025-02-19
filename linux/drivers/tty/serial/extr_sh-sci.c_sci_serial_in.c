
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;
struct plat_sci_reg {int size; int offset; } ;


 int WARN (int,char*) ;
 unsigned int ioread16 (scalar_t__) ;
 unsigned int ioread8 (scalar_t__) ;
 struct plat_sci_reg* sci_getreg (struct uart_port*,int) ;

__attribute__((used)) static unsigned int sci_serial_in(struct uart_port *p, int offset)
{
 const struct plat_sci_reg *reg = sci_getreg(p, offset);

 if (reg->size == 8)
  return ioread8(p->membase + (reg->offset << p->regshift));
 else if (reg->size == 16)
  return ioread16(p->membase + (reg->offset << p->regshift));
 else
  WARN(1, "Invalid register access\n");

 return 0;
}
