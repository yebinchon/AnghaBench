
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {scalar_t__ DebugComponents; int DebugLevel; } ;


 int ODM_DBG_TRACE ;

void ODM_InitDebugSetting(struct odm_dm_struct *pDM_Odm)
{
 pDM_Odm->DebugLevel = ODM_DBG_TRACE;

 pDM_Odm->DebugComponents = 0;
}
