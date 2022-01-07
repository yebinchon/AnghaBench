
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bLinked; } ;
struct dm_priv {scalar_t__ EntryMinUndecoratedSmoothedPWDB; scalar_t__ MinUndecoratedPWDBForDM; } ;
struct hal_com_data {TYPE_1__ odmpriv; struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

__attribute__((used)) static void FindMinimumRSSI(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 struct dm_priv *pdmpriv = &pHalData->dmpriv;
 PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);



 if (
  (pDM_Odm->bLinked != 1) &&
  (pdmpriv->EntryMinUndecoratedSmoothedPWDB == 0)
 ) {
  pdmpriv->MinUndecoratedPWDBForDM = 0;

 } else
  pdmpriv->MinUndecoratedPWDBForDM = pdmpriv->EntryMinUndecoratedSmoothedPWDB;



}
