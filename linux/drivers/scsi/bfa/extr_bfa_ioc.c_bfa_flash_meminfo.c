
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ bfa_boolean_t ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_FLASH_DMA_BUF_SZ ;
 int BFA_ROUNDUP (int ,int ) ;

u32
bfa_flash_meminfo(bfa_boolean_t mincfg)
{

 if (mincfg)
  return 0;
 return BFA_ROUNDUP(BFA_FLASH_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
}
