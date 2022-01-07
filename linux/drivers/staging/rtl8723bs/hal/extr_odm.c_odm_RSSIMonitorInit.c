
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pRA_T ;
struct TYPE_4__ {int firstconnect; } ;
struct TYPE_5__ {TYPE_1__ DM_RA_Table; } ;
typedef TYPE_2__* PDM_ODM_T ;



void odm_RSSIMonitorInit(PDM_ODM_T pDM_Odm)
{
 pRA_T pRA_Table = &pDM_Odm->DM_RA_Table;

 pRA_Table->firstconnect = 0;

}
