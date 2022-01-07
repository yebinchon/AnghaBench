
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ethernet {int port; int poll; } ;
struct net_device {int dummy; } ;


 int INTERFACE (int) ;
 int IRQF_SHARED ;
 int OCTEON_IRQ_RML ;
 int cvm_oct_common_init (struct net_device*) ;
 int cvm_oct_spi_enable_error_reporting (int ) ;
 int cvm_oct_spi_poll ;
 int cvm_oct_spi_rml_interrupt ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 scalar_t__ number_spi_ports ;
 int request_irq (int ,int ,int ,char*,scalar_t__*) ;

int cvm_oct_spi_init(struct net_device *dev)
{
 int r;
 struct octeon_ethernet *priv = netdev_priv(dev);

 if (number_spi_ports == 0) {
  r = request_irq(OCTEON_IRQ_RML, cvm_oct_spi_rml_interrupt,
    IRQF_SHARED, "SPI", &number_spi_ports);
  if (r)
   return r;
 }
 number_spi_ports++;

 if ((priv->port == 0) || (priv->port == 16)) {
  cvm_oct_spi_enable_error_reporting(INTERFACE(priv->port));
  priv->poll = cvm_oct_spi_poll;
 }
 cvm_oct_common_init(dev);
 return 0;
}
