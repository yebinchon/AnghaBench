
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct esas2r_sas_nvram {int * sas_addr; } ;
struct esas2r_adapter {TYPE_1__* nvram; } ;
struct TYPE_2__ {int * sas_addr; } ;


 struct esas2r_sas_nvram default_sas_nvram ;
 int memcpy (int *,int *,int) ;

void esas2r_nvram_get_defaults(struct esas2r_adapter *a,
          struct esas2r_sas_nvram *nvram)
{
 u8 sas_addr[8];





 memcpy(&sas_addr[0], a->nvram->sas_addr, 8);
 *nvram = default_sas_nvram;
 memcpy(&nvram->sas_addr[0], &sas_addr[0], 8);
}
