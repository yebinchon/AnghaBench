
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct asd_ha_struct {int dummy; } ;
typedef int dma_addr_t ;


 int ASD_BUSADDR_HI (int ) ;
 int ASD_BUSADDR_LO (int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,scalar_t__,int ) ;

__attribute__((used)) static inline void asd_write_reg_addr(struct asd_ha_struct *asd_ha, u32 reg,
          dma_addr_t dma_handle)
{
 asd_write_reg_dword(asd_ha, reg, ASD_BUSADDR_LO(dma_handle));
 asd_write_reg_dword(asd_ha, reg+4, ASD_BUSADDR_HI(dma_handle));
}
