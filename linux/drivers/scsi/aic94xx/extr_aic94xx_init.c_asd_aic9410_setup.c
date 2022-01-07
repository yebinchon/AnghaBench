
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr_range; int dev_name_base; int sata_name_base; scalar_t__ port_name_base; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;


 int asd_common_setup (struct asd_ha_struct*) ;

__attribute__((used)) static int asd_aic9410_setup(struct asd_ha_struct *asd_ha)
{
 int err = asd_common_setup(asd_ha);

 if (err)
  return err;

 asd_ha->hw_prof.addr_range = 8;
 asd_ha->hw_prof.port_name_base = 0;
 asd_ha->hw_prof.dev_name_base = 8;
 asd_ha->hw_prof.sata_name_base = 16;

 return 0;
}
