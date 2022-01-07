
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int dummy; } ;


 int QLA82XX_ADDR_DDR_NET ;
 int QLA82XX_ADDR_DDR_NET_MAX ;
 int addr_in_range (unsigned long long,int ,int ) ;

__attribute__((used)) static unsigned long
qla82xx_pci_mem_bound_check(struct qla_hw_data *ha,
 unsigned long long addr, int size)
{
 if (!addr_in_range(addr, QLA82XX_ADDR_DDR_NET,
  QLA82XX_ADDR_DDR_NET_MAX) ||
  !addr_in_range(addr + size - 1, QLA82XX_ADDR_DDR_NET,
  QLA82XX_ADDR_DDR_NET_MAX) ||
  ((size != 1) && (size != 2) && (size != 4) && (size != 8)))
   return 0;
 else
  return 1;
}
