
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct uart_port {int dev; } ;
struct sc16is7xx_port {int regmap; } ;


 int const SC16IS7XX_REG_SHIFT ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int regmap_write (int ,int const,int const) ;
 int sc16is7xx_line (struct uart_port*) ;

__attribute__((used)) static void sc16is7xx_port_write(struct uart_port *port, u8 reg, u8 val)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 const u8 line = sc16is7xx_line(port);

 regmap_write(s->regmap, (reg << SC16IS7XX_REG_SHIFT) | line, val);
}
