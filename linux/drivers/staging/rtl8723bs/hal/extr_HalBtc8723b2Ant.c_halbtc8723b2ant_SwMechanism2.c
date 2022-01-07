
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int PBTC_COEXIST ;


 int NORMAL_EXEC ;
 int halbtc8723b2ant_AgcTable (int ,int ,int) ;
 int halbtc8723b2ant_DacSwing (int ,int ,int,int ) ;

__attribute__((used)) static void halbtc8723b2ant_SwMechanism2(
 PBTC_COEXIST pBtCoexist,
 bool bAGCTableShift,
 bool bADCBackOff,
 bool bSWDACSwing,
 u32 dacSwingLvl
)
{
 halbtc8723b2ant_AgcTable(pBtCoexist, NORMAL_EXEC, bAGCTableShift);
 halbtc8723b2ant_DacSwing(pBtCoexist, NORMAL_EXEC, bSWDACSwing, dacSwingLvl);
}
