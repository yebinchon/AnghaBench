
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct mvs_info {TYPE_2__* phy; int sas_addr; TYPE_1__* chip; } ;
struct TYPE_4__ {int dev_sas_addr; } ;
struct TYPE_3__ {size_t n_phy; } ;


 int SAS_ADDR_SIZE ;
 int cpu_to_be64 (scalar_t__) ;
 int memcpy (int ,int*,int ) ;

__attribute__((used)) static void mvs_init_sas_add(struct mvs_info *mvi)
{
 u8 i;
 for (i = 0; i < mvi->chip->n_phy; i++) {
  mvi->phy[i].dev_sas_addr = 0x5005043011ab0000ULL;
  mvi->phy[i].dev_sas_addr =
   cpu_to_be64((u64)(*(u64 *)&mvi->phy[i].dev_sas_addr));
 }

 memcpy(mvi->sas_addr, &mvi->phy[0].dev_sas_addr, SAS_ADDR_SIZE);
}
