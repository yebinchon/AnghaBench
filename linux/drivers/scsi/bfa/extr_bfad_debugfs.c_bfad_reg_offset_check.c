
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bfa_s {int ioc; } ;
typedef int bfa_status_t ;


 int BFA_REG_ADDRMSK (int *) ;
 int BFA_STATUS_EINVAL ;
 int BFA_STATUS_OK ;

__attribute__((used)) static bfa_status_t
bfad_reg_offset_check(struct bfa_s *bfa, u32 offset, u32 len)
{
 u8 area;


 area = (offset >> 15) & 0x7;
 if (area == 0) {

  if ((offset + (len<<2)) > 0x8000)
   return BFA_STATUS_EINVAL;
 } else if (area == 0x1) {

  if ((offset + (len<<2)) > 0x10000)
   return BFA_STATUS_EINVAL;
 } else {

  if ((offset + (len<<2)) > BFA_REG_ADDRMSK(&bfa->ioc))
   return BFA_STATUS_EINVAL;
 }
 return BFA_STATUS_OK;
}
