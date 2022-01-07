
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int NORMAL_EXEC ;
 int halbtc8723b2ant_CoexTableWithType (int ,int ,int ) ;
 int halbtc8723b2ant_DecBtPwr (int ,int ,int ) ;
 int halbtc8723b2ant_FwDacSwingLvl (int ,int ,int) ;
 int halbtc8723b2ant_PsTdma (int ,int ,int,int) ;
 int halbtc8723b2ant_SwMechanism1 (int ,int,int,int,int) ;
 int halbtc8723b2ant_SwMechanism2 (int ,int,int,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_CoexAllOff(PBTC_COEXIST pBtCoexist)
{

 halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 1);
 halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 6);
 halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);


 halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 0, 0, 0);
 halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);



 halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
}
