
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * id; } ;


 int CTCM_DBF_INFOS ;
 TYPE_1__* ctcm_dbf ;
 int debug_unregister (int *) ;

void ctcm_unregister_dbf_views(void)
{
 int x;
 for (x = 0; x < CTCM_DBF_INFOS; x++) {
  debug_unregister(ctcm_dbf[x].id);
  ctcm_dbf[x].id = ((void*)0);
 }
}
