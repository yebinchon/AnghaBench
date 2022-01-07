
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PDM_ODM_T ;


 int odm_GetNHMCounterStatistics (int ) ;
 int odm_NHMCounterStatisticsReset (int ) ;

void odm_NHMCounterStatistics(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;


 odm_GetNHMCounterStatistics(pDM_Odm);


 odm_NHMCounterStatisticsReset(pDM_Odm);
}
