
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int msleep (int) ;
 int rtw_hal_fill_h2c_cmd (struct adapter*,int,int,int*) ;

__attribute__((used)) static void halbtcoutsrc_SetBtReg(void *pBtcContext, u8 RegType, u32 RegAddr, u32 Data)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;
 u8 CmdBuffer1[4] = {0};
 u8 CmdBuffer2[4] = {0};
 u8 *AddrToSet = (u8 *)&RegAddr;
 u8 *ValueToSet = (u8 *)&Data;
 u8 OperVer = 0;
 u8 ReqNum = 0;

 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;

 CmdBuffer1[0] |= (OperVer & 0x0f);
 CmdBuffer1[0] |= ((ReqNum << 4) & 0xf0);
 CmdBuffer1[1] = 0x0d;
 CmdBuffer1[2] = ValueToSet[0];
 rtw_hal_fill_h2c_cmd(padapter, 0x67, 4, &(CmdBuffer1[0]));

 msleep(200);
 ReqNum++;

 CmdBuffer2[0] |= (OperVer & 0x0f);
 CmdBuffer2[0] |= ((ReqNum << 4) & 0xf0);
 CmdBuffer2[1] = 0x0c;
 CmdBuffer2[3] = AddrToSet[0];
 rtw_hal_fill_h2c_cmd(padapter, 0x67, 4, &(CmdBuffer2[0]));
}
