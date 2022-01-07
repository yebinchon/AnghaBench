
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uart_port {scalar_t__ iobase; int dev; } ;
struct max310x_port {int regmap; } ;


 struct max310x_port* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void max310x_port_update(struct uart_port *port, u8 reg, u8 mask, u8 val)
{
 struct max310x_port *s = dev_get_drvdata(port->dev);

 regmap_update_bits(s->regmap, port->iobase + reg, mask, val);
}
