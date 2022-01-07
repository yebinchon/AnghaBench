
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int XILINX_NUM_MSI_IRQS ;
 int find_first_zero_bit (int ,int) ;
 int msi_irq_in_use ;
 int set_bit (int,int ) ;

__attribute__((used)) static int xilinx_pcie_assign_msi(void)
{
 int pos;

 pos = find_first_zero_bit(msi_irq_in_use, XILINX_NUM_MSI_IRQS);
 if (pos < XILINX_NUM_MSI_IRQS)
  set_bit(pos, msi_irq_in_use);
 else
  return -ENOSPC;

 return pos;
}
