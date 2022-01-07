
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_manuf_sec {int pcba_sn; } ;
struct TYPE_2__ {char* pcba_sn; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;


 size_t ASD_PCBA_SN_SIZE ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static int asd_ms_get_pcba_sn(struct asd_ha_struct *asd_ha,
         struct asd_manuf_sec *ms)
{
 memcpy(asd_ha->hw_prof.pcba_sn, ms->pcba_sn, ASD_PCBA_SN_SIZE);
 asd_ha->hw_prof.pcba_sn[ASD_PCBA_SN_SIZE] = '\0';
 return 0;
}
