
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int (* fBtcSet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_SET_ACT_AGGREGATE_CTRL ;
 int BTC_SET_BL_BT_CTRL_AGG_SIZE ;
 int BTC_SET_BL_TO_REJ_AP_AGG_PKT ;
 int BTC_SET_U1_AGG_BUF_SIZE ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b2ant_LimitedRx(
 PBTC_COEXIST pBtCoexist,
 bool bForceExec,
 bool bRejApAggPkt,
 bool bBtCtrlAggBufSize,
 u8 aggBufSize
)
{
 bool bRejectRxAgg = bRejApAggPkt;
 bool bBtCtrlRxAggSize = bBtCtrlAggBufSize;
 u8 rxAggSize = aggBufSize;




 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_TO_REJ_AP_AGG_PKT, &bRejectRxAgg);

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_CTRL_AGG_SIZE, &bBtCtrlRxAggSize);

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_U1_AGG_BUF_SIZE, &rxAggSize);

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_AGGREGATE_CTRL, ((void*)0));
}
