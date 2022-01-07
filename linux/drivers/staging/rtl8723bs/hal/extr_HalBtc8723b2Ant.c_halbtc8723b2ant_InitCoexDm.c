
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int FORCE_EXEC ;
 int halbtc8723b2ant_DecBtPwr (int ,int ,int ) ;
 int halbtc8723b2ant_FwDacSwingLvl (int ,int ,int) ;
 int halbtc8723b2ant_PsTdma (int ,int ,int,int) ;
 int halbtc8723b2ant_SwMechanism1 (int ,int,int,int,int) ;
 int halbtc8723b2ant_SwMechanism2 (int ,int,int,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_InitCoexDm(PBTC_COEXIST pBtCoexist)
{


 halbtc8723b2ant_PsTdma(pBtCoexist, FORCE_EXEC, 0, 1);
 halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, FORCE_EXEC, 6);
 halbtc8723b2ant_DecBtPwr(pBtCoexist, FORCE_EXEC, 0);

 halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 0, 0, 0);
 halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);
}
