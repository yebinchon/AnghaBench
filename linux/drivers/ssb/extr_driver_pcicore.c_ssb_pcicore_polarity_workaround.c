
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_pcicore {int dummy; } ;


 int ssb_pcie_read (struct ssb_pcicore*,int) ;

__attribute__((used)) static u8 ssb_pcicore_polarity_workaround(struct ssb_pcicore *pc)
{
 return (ssb_pcie_read(pc, 0x204) & 0x10) ? 0xC0 : 0x80;
}
