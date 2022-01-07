
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int RIO_ASM_INFO_CAR ;
 int RIO_EXT_FTR_PTR_MASK ;
 int RIO_GET_BLOCK_ID (int) ;
 int RIO_GET_BLOCK_PTR (int) ;
 int rio_local_read_config_32 (struct rio_mport*,int,int*) ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,int,int*) ;

u32
rio_mport_get_feature(struct rio_mport * port, int local, u16 destid,
        u8 hopcount, int ftr)
{
 u32 asm_info, ext_ftr_ptr, ftr_header;

 if (local)
  rio_local_read_config_32(port, RIO_ASM_INFO_CAR, &asm_info);
 else
  rio_mport_read_config_32(port, destid, hopcount,
      RIO_ASM_INFO_CAR, &asm_info);

 ext_ftr_ptr = asm_info & RIO_EXT_FTR_PTR_MASK;

 while (ext_ftr_ptr) {
  if (local)
   rio_local_read_config_32(port, ext_ftr_ptr,
       &ftr_header);
  else
   rio_mport_read_config_32(port, destid, hopcount,
       ext_ftr_ptr, &ftr_header);
  if (RIO_GET_BLOCK_ID(ftr_header) == ftr)
   return ext_ftr_ptr;

  ext_ftr_ptr = RIO_GET_BLOCK_PTR(ftr_header);
  if (!ext_ftr_ptr)
   break;
 }

 return 0;
}
