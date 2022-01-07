
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct sc16is7xx_port {int regmap; } ;


 int SC16IS7XX_EFCR_REG ;
 int SC16IS7XX_EFCR_RXDISABLE_BIT ;
 int SC16IS7XX_EFCR_TXDISABLE_BIT ;
 unsigned int SC16IS7XX_EFR_ENABLE_BIT ;
 int SC16IS7XX_EFR_REG ;
 unsigned int SC16IS7XX_FCR_FIFO_BIT ;
 int SC16IS7XX_FCR_REG ;
 unsigned int SC16IS7XX_FCR_RXRESET_BIT ;
 unsigned int SC16IS7XX_FCR_TXRESET_BIT ;
 unsigned int SC16IS7XX_IER_RDI_BIT ;
 int SC16IS7XX_IER_REG ;
 unsigned int SC16IS7XX_IER_THRI_BIT ;
 unsigned int SC16IS7XX_LCR_CONF_MODE_B ;
 int SC16IS7XX_LCR_REG ;
 unsigned int SC16IS7XX_LCR_WORD_LEN_8 ;
 int SC16IS7XX_MCR_REG ;
 int SC16IS7XX_MCR_TCRTLR_BIT ;
 int SC16IS7XX_TCR_REG ;
 unsigned int SC16IS7XX_TCR_RX_HALT (int) ;
 unsigned int SC16IS7XX_TCR_RX_RESUME (int) ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int regcache_cache_bypass (int ,int) ;
 int sc16is7xx_port_update (struct uart_port*,int ,int,int) ;
 int sc16is7xx_port_write (struct uart_port*,int ,unsigned int) ;
 int sc16is7xx_power (struct uart_port*,int) ;
 int udelay (int) ;

__attribute__((used)) static int sc16is7xx_startup(struct uart_port *port)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 unsigned int val;

 sc16is7xx_power(port, 1);


 val = SC16IS7XX_FCR_RXRESET_BIT | SC16IS7XX_FCR_TXRESET_BIT;
 sc16is7xx_port_write(port, SC16IS7XX_FCR_REG, val);
 udelay(5);
 sc16is7xx_port_write(port, SC16IS7XX_FCR_REG,
        SC16IS7XX_FCR_FIFO_BIT);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG,
        SC16IS7XX_LCR_CONF_MODE_B);

 regcache_cache_bypass(s->regmap, 1);


 sc16is7xx_port_write(port, SC16IS7XX_EFR_REG,
        SC16IS7XX_EFR_ENABLE_BIT);


 sc16is7xx_port_update(port, SC16IS7XX_MCR_REG,
         SC16IS7XX_MCR_TCRTLR_BIT,
         SC16IS7XX_MCR_TCRTLR_BIT);



 sc16is7xx_port_write(port, SC16IS7XX_TCR_REG,
        SC16IS7XX_TCR_RX_RESUME(24) |
        SC16IS7XX_TCR_RX_HALT(48));

 regcache_cache_bypass(s->regmap, 0);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG, SC16IS7XX_LCR_WORD_LEN_8);


 sc16is7xx_port_update(port, SC16IS7XX_EFCR_REG,
         SC16IS7XX_EFCR_RXDISABLE_BIT |
         SC16IS7XX_EFCR_TXDISABLE_BIT,
         0);


 val = SC16IS7XX_IER_RDI_BIT | SC16IS7XX_IER_THRI_BIT;
 sc16is7xx_port_write(port, SC16IS7XX_IER_REG, val);

 return 0;
}
