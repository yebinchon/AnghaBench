
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct asd_ha_struct {int iospace; } ;


 scalar_t__ OCM_BASE_ADDR ;
 int asd_write_ocm_byte (struct asd_ha_struct*,scalar_t__,int ) ;
 int asd_write_reg_string (struct asd_ha_struct*,void*,scalar_t__,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void asd_write_ocm_seg(struct asd_ha_struct *asd_ha, void *buffer,
       u32 offs, int size)
{
 u8 *p = buffer;
 if (unlikely(asd_ha->iospace))
  asd_write_reg_string(asd_ha, buffer, offs+OCM_BASE_ADDR, size);
 else {
  for ( ; size > 0; size--, offs++, p++)
   asd_write_ocm_byte(asd_ha, offs, *p);
 }
 return;
}
