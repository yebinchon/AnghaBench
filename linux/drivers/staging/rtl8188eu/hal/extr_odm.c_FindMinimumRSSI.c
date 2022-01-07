
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_priv {int EntryMinUndecoratedSmoothedPWDB; int MinUndecoratedPWDBForDM; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct dm_priv dmpriv; } ;



__attribute__((used)) static void FindMinimumRSSI(struct adapter *pAdapter)
{
 struct dm_priv *pdmpriv = &pAdapter->HalData->dmpriv;


 pdmpriv->MinUndecoratedPWDBForDM = pdmpriv->EntryMinUndecoratedSmoothedPWDB;
}
