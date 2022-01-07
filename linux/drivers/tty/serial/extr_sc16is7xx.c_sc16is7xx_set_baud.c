
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct uart_port {unsigned long uartclk; int dev; } ;
struct sc16is7xx_port {int regmap; int efr_lock; } ;


 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int SC16IS7XX_DLH_REG ;
 int SC16IS7XX_DLL_REG ;
 unsigned long SC16IS7XX_EFR_ENABLE_BIT ;
 int SC16IS7XX_EFR_REG ;
 unsigned long SC16IS7XX_LCR_CONF_MODE_A ;
 unsigned long SC16IS7XX_LCR_CONF_MODE_B ;
 int SC16IS7XX_LCR_REG ;
 unsigned long SC16IS7XX_MCR_CLKSEL_BIT ;
 int SC16IS7XX_MCR_REG ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regcache_cache_bypass (int ,int) ;
 unsigned long sc16is7xx_port_read (struct uart_port*,int ) ;
 int sc16is7xx_port_update (struct uart_port*,int ,unsigned long,unsigned long) ;
 int sc16is7xx_port_write (struct uart_port*,int ,unsigned long) ;

__attribute__((used)) static int sc16is7xx_set_baud(struct uart_port *port, int baud)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 u8 lcr;
 u8 prescaler = 0;
 unsigned long clk = port->uartclk, div = clk / 16 / baud;

 if (div > 0xffff) {
  prescaler = SC16IS7XX_MCR_CLKSEL_BIT;
  div /= 4;
 }
 mutex_lock(&s->efr_lock);

 lcr = sc16is7xx_port_read(port, SC16IS7XX_LCR_REG);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG,
        SC16IS7XX_LCR_CONF_MODE_B);


 regcache_cache_bypass(s->regmap, 1);
 sc16is7xx_port_write(port, SC16IS7XX_EFR_REG,
        SC16IS7XX_EFR_ENABLE_BIT);
 regcache_cache_bypass(s->regmap, 0);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG, lcr);

 mutex_unlock(&s->efr_lock);

 sc16is7xx_port_update(port, SC16IS7XX_MCR_REG,
         SC16IS7XX_MCR_CLKSEL_BIT,
         prescaler);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG,
        SC16IS7XX_LCR_CONF_MODE_A);


 regcache_cache_bypass(s->regmap, 1);
 sc16is7xx_port_write(port, SC16IS7XX_DLH_REG, div / 256);
 sc16is7xx_port_write(port, SC16IS7XX_DLL_REG, div % 256);
 regcache_cache_bypass(s->regmap, 0);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG, lcr);

 return DIV_ROUND_CLOSEST(clk / 16, div);
}
