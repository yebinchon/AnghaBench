
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {scalar_t__ iospace; } ;


 int asd_unmap_ioport (struct asd_ha_struct*) ;
 int asd_unmap_memio (struct asd_ha_struct*) ;

__attribute__((used)) static void asd_unmap_ha(struct asd_ha_struct *asd_ha)
{
 if (asd_ha->iospace)
  asd_unmap_ioport(asd_ha);
 else
  asd_unmap_memio(asd_ha);
}
