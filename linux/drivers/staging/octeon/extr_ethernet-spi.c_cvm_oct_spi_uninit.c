
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CVMX_SPXX_INT_MSK (int) ;
 int CVMX_STXX_INT_MSK (int) ;
 int OCTEON_IRQ_RML ;
 int cvm_oct_common_uninit (struct net_device*) ;
 int cvmx_write_csr (int ,int ) ;
 int free_irq (int ,scalar_t__*) ;
 scalar_t__ number_spi_ports ;

void cvm_oct_spi_uninit(struct net_device *dev)
{
 int interface;

 cvm_oct_common_uninit(dev);
 number_spi_ports--;
 if (number_spi_ports == 0) {
  for (interface = 0; interface < 2; interface++) {
   cvmx_write_csr(CVMX_SPXX_INT_MSK(interface), 0);
   cvmx_write_csr(CVMX_STXX_INT_MSK(interface), 0);
  }
  free_irq(OCTEON_IRQ_RML, &number_spi_ports);
 }
}
