
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int phy_ConvertTxPowerByRateInDbmToRelativeValues (struct adapter*) ;
 int phy_StoreTxPowerByRateBase (struct adapter*) ;

void PHY_TxPowerByRateConfiguration(struct adapter *padapter)
{
 phy_StoreTxPowerByRateBase(padapter);
 phy_ConvertTxPowerByRateInDbmToRelativeValues(padapter);
}
