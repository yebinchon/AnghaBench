
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct asd_ha_struct {struct asd_ha_addrspace* io_handle; } ;
struct asd_ha_addrspace {int swa_base; int swb_base; int swc_base; } ;


 int ALL_BASE_ADDR ;
 int BUG_ON (int) ;
 int MBAR0_SWA_SIZE ;
 int MBAR0_SWB_SIZE ;
 int MBAR0_SWC_SIZE ;
 int asd_move_swb (struct asd_ha_struct*,int) ;
 int asd_read_swa_byte (struct asd_ha_struct*,int) ;
 int asd_read_swb_byte (struct asd_ha_struct*,int) ;
 int asd_read_swc_byte (struct asd_ha_struct*,int) ;

__attribute__((used)) static u8 __asd_read_reg_byte(struct asd_ha_struct *asd_ha, u32 reg)
{
 struct asd_ha_addrspace *io_handle=&asd_ha->io_handle[0];
 u8 val;
 BUG_ON(reg >= 0xC0000000 || reg < ALL_BASE_ADDR);
 if (io_handle->swa_base <= reg
     && reg < io_handle->swa_base + MBAR0_SWA_SIZE)
  val = asd_read_swa_byte (asd_ha, reg);
 else if (io_handle->swb_base <= reg
   && reg < io_handle->swb_base + MBAR0_SWB_SIZE)
  val = asd_read_swb_byte (asd_ha, reg);
 else if (io_handle->swc_base <= reg
   && reg < io_handle->swc_base + MBAR0_SWC_SIZE)
  val = asd_read_swc_byte (asd_ha, reg);
 else {

  asd_move_swb(asd_ha, reg);
  val = asd_read_swb_byte (asd_ha, reg);
 }
 return val;
}
