
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int DIS_BCNQ_SUB ;
 int DIS_TSF_UDT ;
 int EN_BCN_FUNCTION ;
 scalar_t__ REG_BCN_CTRL ;
 scalar_t__ REG_RD_CTRL ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void _BeaconFunctionEnable(struct adapter *padapter, u8 Enable, u8 Linked)
{
 rtw_write8(padapter, REG_BCN_CTRL, DIS_TSF_UDT | EN_BCN_FUNCTION | DIS_BCNQ_SUB);
 rtw_write8(padapter, REG_RD_CTRL+1, 0x6F);
}
