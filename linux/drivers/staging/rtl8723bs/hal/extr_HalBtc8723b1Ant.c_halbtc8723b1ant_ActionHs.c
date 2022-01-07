
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (int ,int ,int) ;
 int halbtc8723b1ant_PsTdma (int ,int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_ActionHs(PBTC_COEXIST pBtCoexist)
{
 halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 5);
 halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
}
