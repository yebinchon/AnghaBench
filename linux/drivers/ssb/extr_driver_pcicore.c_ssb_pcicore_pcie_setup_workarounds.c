
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ssb_pcicore {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int SSB_PCICORE_SPROM (int) ;
 int pcicore_read16 (struct ssb_pcicore*,int ) ;
 int pcicore_write16 (struct ssb_pcicore*,int ,int) ;
 int ssb_pcicore_serdes_workaround (struct ssb_pcicore*) ;
 int ssb_pcie_mdio_write (struct ssb_pcicore*,int const,int,int) ;
 int ssb_pcie_read (struct ssb_pcicore*,int) ;
 int ssb_pcie_write (struct ssb_pcicore*,int,int) ;

__attribute__((used)) static void ssb_pcicore_pcie_setup_workarounds(struct ssb_pcicore *pc)
{
 u32 tmp;
 u8 rev = pc->dev->id.revision;

 if (rev == 0 || rev == 1) {

  tmp = ssb_pcie_read(pc, 0x4);
  tmp |= 0x8;
  ssb_pcie_write(pc, 0x4, tmp);
 }
 if (rev == 1) {

  tmp = ssb_pcie_read(pc, 0x100);
  tmp |= 0x40;
  ssb_pcie_write(pc, 0x100, tmp);
 }

 if (rev == 0) {
  const u8 serdes_rx_device = 0x1F;

  ssb_pcie_mdio_write(pc, serdes_rx_device,
     2 , 0x8128);
  ssb_pcie_mdio_write(pc, serdes_rx_device,
     6 , 0x0100);
  ssb_pcie_mdio_write(pc, serdes_rx_device,
     7 , 0x1466);
 } else if (rev == 3 || rev == 4 || rev == 5) {

  ssb_pcicore_serdes_workaround(pc);

 } else if (rev == 7) {

 }

 if (rev >= 6) {

  tmp = pcicore_read16(pc, SSB_PCICORE_SPROM(5));
  if (!(tmp & 0x8000))
   pcicore_write16(pc, SSB_PCICORE_SPROM(5),
     tmp | 0x8000);
 }
}
