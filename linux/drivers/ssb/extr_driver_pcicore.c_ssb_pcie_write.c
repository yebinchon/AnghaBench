
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_pcicore {int dummy; } ;


 int pcicore_write32 (struct ssb_pcicore*,int,int ) ;

__attribute__((used)) static void ssb_pcie_write(struct ssb_pcicore *pc, u32 address, u32 data)
{
 pcicore_write32(pc, 0x130, address);
 pcicore_write32(pc, 0x134, data);
}
