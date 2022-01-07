
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* fBtcSetBtReg ) (TYPE_1__*,int ,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_BT_REG_RF ;
 int BTC_MEDIA_DISCONNECT ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int EXhalbtc8723b2ant_MediaStatusNotify (TYPE_1__*,int ) ;
 int FORCE_EXEC ;
 int INTF_NOTIFY ;
 int halbtc8723b2ant_IgnoreWlanAct (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_WifiOffHwCfg (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ,int,int) ;

void EXhalbtc8723b2ant_HaltNotify(PBTC_COEXIST pBtCoexist)
{
 BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));

 halbtc8723b2ant_WifiOffHwCfg(pBtCoexist);
 pBtCoexist->fBtcSetBtReg(pBtCoexist, BTC_BT_REG_RF, 0x3c, 0x15);
 halbtc8723b2ant_IgnoreWlanAct(pBtCoexist, FORCE_EXEC, 1);

 EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, BTC_MEDIA_DISCONNECT);
}
