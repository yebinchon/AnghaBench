
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 scalar_t__ RIO_ASM_INFO_CAR ;
 scalar_t__ RIO_EXT_FTR_PTR_MASK ;
 scalar_t__ RIO_GET_BLOCK_ID (scalar_t__) ;
 int rio_local_read_config_32 (struct rio_mport*,scalar_t__,scalar_t__*) ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,scalar_t__,scalar_t__*) ;

u32
rio_mport_get_efb(struct rio_mport *port, int local, u16 destid,
        u8 hopcount, u32 from)
{
 u32 reg_val;

 if (from == 0) {
  if (local)
   rio_local_read_config_32(port, RIO_ASM_INFO_CAR,
       &reg_val);
  else
   rio_mport_read_config_32(port, destid, hopcount,
       RIO_ASM_INFO_CAR, &reg_val);
  return reg_val & RIO_EXT_FTR_PTR_MASK;
 } else {
  if (local)
   rio_local_read_config_32(port, from, &reg_val);
  else
   rio_mport_read_config_32(port, destid, hopcount,
       from, &reg_val);
  return RIO_GET_BLOCK_ID(reg_val);
 }
}
