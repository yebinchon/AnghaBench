
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;
 int RIO_GET_BLOCK_ID (int) ;
 int rio_local_read_config_32 (struct rio_mport*,int,int*) ;
 int rio_mport_get_efb (struct rio_mport*,int,int ,int ,int) ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,int,int*) ;

u32
rio_mport_get_physefb(struct rio_mport *port, int local,
        u16 destid, u8 hopcount, u32 *rmap)
{
 u32 ext_ftr_ptr;
 u32 ftr_header;

 ext_ftr_ptr = rio_mport_get_efb(port, local, destid, hopcount, 0);

 while (ext_ftr_ptr) {
  if (local)
   rio_local_read_config_32(port, ext_ftr_ptr,
       &ftr_header);
  else
   rio_mport_read_config_32(port, destid, hopcount,
       ext_ftr_ptr, &ftr_header);

  ftr_header = RIO_GET_BLOCK_ID(ftr_header);
  switch (ftr_header) {

  case 133:
  case 130:
  case 134:
  case 132:
  case 129:
  case 138:
  case 136:
   *rmap = 1;
   return ext_ftr_ptr;

  case 131:
  case 128:
  case 137:
  case 135:
   *rmap = 2;
   return ext_ftr_ptr;

  default:
   break;
  }

  ext_ftr_ptr = rio_mport_get_efb(port, local, destid,
      hopcount, ext_ftr_ptr);
 }

 return ext_ftr_ptr;
}
