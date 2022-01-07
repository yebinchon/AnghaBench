
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int dev; } ;
struct sc16is7xx_port {int regmap; int buf; } ;


 int const SC16IS7XX_REG_SHIFT ;
 int const SC16IS7XX_THR_REG ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int regcache_cache_bypass (int ,int) ;
 int regmap_raw_write (int ,int,int ,int) ;
 int sc16is7xx_line (struct uart_port*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sc16is7xx_fifo_write(struct uart_port *port, u8 to_send)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 const u8 line = sc16is7xx_line(port);
 u8 addr = (SC16IS7XX_THR_REG << SC16IS7XX_REG_SHIFT) | line;





 if (unlikely(!to_send))
  return;

 regcache_cache_bypass(s->regmap, 1);
 regmap_raw_write(s->regmap, addr, s->buf, to_send);
 regcache_cache_bypass(s->regmap, 0);
}
