
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int ALGO_BT_MONITOR ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_LowPenaltyRa (int ,int ,int) ;

__attribute__((used)) static void halbtc8723b1ant_SwMechanism(
 PBTC_COEXIST pBtCoexist, bool bLowPenaltyRA
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_BT_MONITOR,
  ("[BTCoex], SM[LpRA] = %d\n", bLowPenaltyRA)
 );

 halbtc8723b1ant_LowPenaltyRa(pBtCoexist, NORMAL_EXEC, bLowPenaltyRA);
}
