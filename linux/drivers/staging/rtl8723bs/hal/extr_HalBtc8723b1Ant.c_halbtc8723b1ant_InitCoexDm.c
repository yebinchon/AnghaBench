
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ popEventCnt; } ;
typedef int PBTC_COEXIST ;


 int FORCE_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (int ,int ,int ) ;
 int halbtc8723b1ant_SwMechanism (int ,int) ;
 TYPE_1__* pCoexSta ;

__attribute__((used)) static void halbtc8723b1ant_InitCoexDm(PBTC_COEXIST pBtCoexist)
{



 halbtc8723b1ant_SwMechanism(pBtCoexist, 0);


 halbtc8723b1ant_CoexTableWithType(pBtCoexist, FORCE_EXEC, 0);

 pCoexSta->popEventCnt = 0;
}
