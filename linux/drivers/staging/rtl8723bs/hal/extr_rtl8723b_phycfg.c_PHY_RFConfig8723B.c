
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int PHY_RF6052_Config8723B (struct adapter*) ;
 int _SUCCESS ;
 int phy_LCK_8723B (struct adapter*) ;

int PHY_RFConfig8723B(struct adapter *Adapter)
{
 int rtStatus = _SUCCESS;




 rtStatus = PHY_RF6052_Config8723B(Adapter);

 phy_LCK_8723B(Adapter);


 return rtStatus;
}
