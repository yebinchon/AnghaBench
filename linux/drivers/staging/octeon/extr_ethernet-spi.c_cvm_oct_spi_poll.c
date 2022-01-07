
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ethernet {int port; } ;
struct net_device {int dummy; } ;


 int CVMX_SPI_MODE_DUPLEX ;
 int cvm_oct_spi_enable_error_reporting (int) ;
 int cvmx_spi4000_check_speed (int,int) ;
 scalar_t__ cvmx_spi_restart_interface (int,int ,int) ;
 scalar_t__* need_retrain ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cvm_oct_spi_poll(struct net_device *dev)
{
 static int spi4000_port;
 struct octeon_ethernet *priv = netdev_priv(dev);
 int interface;

 for (interface = 0; interface < 2; interface++) {
  if ((priv->port == interface * 16) && need_retrain[interface]) {
   if (cvmx_spi_restart_interface
       (interface, CVMX_SPI_MODE_DUPLEX, 10) == 0) {
    need_retrain[interface] = 0;
    cvm_oct_spi_enable_error_reporting(interface);
   }
  }
  if (priv->port == spi4000_port) {




   cvmx_spi4000_check_speed(interface, priv->port);




   spi4000_port--;
   if (spi4000_port < 0)
    spi4000_port = 10;
  }
 }
}
