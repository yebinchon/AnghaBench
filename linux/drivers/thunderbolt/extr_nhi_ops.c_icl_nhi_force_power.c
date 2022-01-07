
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_nhi {int pdev; } ;


 int ETIMEDOUT ;
 int VS_CAP_22 ;
 int VS_CAP_22_DMA_DELAY_MASK ;
 int VS_CAP_22_DMA_DELAY_SHIFT ;
 int VS_CAP_22_FORCE_POWER ;
 int VS_CAP_9 ;
 int VS_CAP_9_FW_READY ;
 int msleep (int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static int icl_nhi_force_power(struct tb_nhi *nhi, bool power)
{
 u32 vs_cap;
 pci_read_config_dword(nhi->pdev, VS_CAP_22, &vs_cap);
 if (power) {
  vs_cap &= ~VS_CAP_22_DMA_DELAY_MASK;
  vs_cap |= 0x22 << VS_CAP_22_DMA_DELAY_SHIFT;
  vs_cap |= VS_CAP_22_FORCE_POWER;
 } else {
  vs_cap &= ~VS_CAP_22_FORCE_POWER;
 }
 pci_write_config_dword(nhi->pdev, VS_CAP_22, vs_cap);

 if (power) {
  unsigned int retries = 10;
  u32 val;


  do {
   pci_read_config_dword(nhi->pdev, VS_CAP_9, &val);
   if (val & VS_CAP_9_FW_READY)
    return 0;
   msleep(250);
  } while (--retries);

  return -ETIMEDOUT;
 }

 return 0;
}
