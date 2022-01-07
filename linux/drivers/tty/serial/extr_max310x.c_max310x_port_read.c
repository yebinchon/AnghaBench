
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct uart_port {unsigned int iobase; int dev; } ;
struct max310x_port {int regmap; } ;


 struct max310x_port* dev_get_drvdata (int ) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static u8 max310x_port_read(struct uart_port *port, u8 reg)
{
 struct max310x_port *s = dev_get_drvdata(port->dev);
 unsigned int val = 0;

 regmap_read(s->regmap, port->iobase + reg, &val);

 return val;
}
