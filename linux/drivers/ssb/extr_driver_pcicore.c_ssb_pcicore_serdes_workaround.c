
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ssb_pcicore {int dummy; } ;


 int ssb_pcicore_polarity_workaround (struct ssb_pcicore*) ;
 int ssb_pcie_mdio_read (struct ssb_pcicore*,int const,int) ;
 int ssb_pcie_mdio_write (struct ssb_pcicore*,int const,int,int) ;

__attribute__((used)) static void ssb_pcicore_serdes_workaround(struct ssb_pcicore *pc)
{
 const u8 serdes_pll_device = 0x1D;
 const u8 serdes_rx_device = 0x1F;
 u16 tmp;

 ssb_pcie_mdio_write(pc, serdes_rx_device, 1 ,
       ssb_pcicore_polarity_workaround(pc));
 tmp = ssb_pcie_mdio_read(pc, serdes_pll_device, 1 );
 if (tmp & 0x4000)
  ssb_pcie_mdio_write(pc, serdes_pll_device, 1, tmp & ~0x4000);
}
