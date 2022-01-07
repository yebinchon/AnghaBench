
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int* Regdot11TxHTOperationalRateSet; int dev; scalar_t__ (* GetHalfNmodeSupportByAPsHandler ) (int ) ;} ;


 int HT_PickMCSRate (struct rtllib_device*,int*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static u8 HTFilterMCSRate(struct rtllib_device *ieee, u8 *pSupportMCS,
     u8 *pOperateMCS)
{

 u8 i;

 for (i = 0; i <= 15; i++)
  pOperateMCS[i] = ieee->Regdot11TxHTOperationalRateSet[i] &
     pSupportMCS[i];

 HT_PickMCSRate(ieee, pOperateMCS);

 if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
  pOperateMCS[1] = 0;

 for (i = 2; i <= 15; i++)
  pOperateMCS[i] = 0;

 return 1;
}
