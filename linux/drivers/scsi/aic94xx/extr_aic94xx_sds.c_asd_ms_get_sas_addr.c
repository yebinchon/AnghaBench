
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_manuf_sec {int sas_addr; } ;
struct TYPE_2__ {int sas_addr; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;


 int SAS_ADDR_SIZE ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int asd_ms_get_sas_addr(struct asd_ha_struct *asd_ha,
          struct asd_manuf_sec *ms)
{
 memcpy(asd_ha->hw_prof.sas_addr, ms->sas_addr, SAS_ADDR_SIZE);
 return 0;
}
