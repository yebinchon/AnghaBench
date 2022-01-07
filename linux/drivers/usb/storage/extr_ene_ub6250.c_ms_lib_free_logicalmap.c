
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {int * Log2PhyMap; int * Phy2LogMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;


 int kfree (int *) ;

__attribute__((used)) static int ms_lib_free_logicalmap(struct us_data *us)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 kfree(info->MS_Lib.Phy2LogMap);
 info->MS_Lib.Phy2LogMap = ((void*)0);

 kfree(info->MS_Lib.Log2PhyMap);
 info->MS_Lib.Log2PhyMap = ((void*)0);

 return 0;
}
