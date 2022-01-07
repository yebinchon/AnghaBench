
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ssb_pcicore {int dummy; } ;


 int msleep (int) ;
 int pcicore_read32 (struct ssb_pcicore*,int const) ;
 int pcicore_write32 (struct ssb_pcicore*,int const,int) ;
 int udelay (int) ;

__attribute__((used)) static void ssb_pcie_mdio_set_phy(struct ssb_pcicore *pc, u8 phy)
{
 const u16 mdio_control = 0x128;
 const u16 mdio_data = 0x12C;
 u32 v;
 int i;

 v = (1 << 30);
 v |= (1 << 28);
 v |= (1 << 17);
 v |= (0x1F << 18);
 v |= (phy << 4);
 pcicore_write32(pc, mdio_data, v);

 udelay(10);
 for (i = 0; i < 200; i++) {
  v = pcicore_read32(pc, mdio_control);
  if (v & 0x100 )
   break;
  msleep(1);
 }
}
