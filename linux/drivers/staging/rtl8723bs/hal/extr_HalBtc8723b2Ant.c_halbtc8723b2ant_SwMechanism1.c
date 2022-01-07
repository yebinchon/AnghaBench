
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int NORMAL_EXEC ;
 int halbtc8723b2ant_LowPenaltyRa (int ,int ,int) ;
 int halbtc8723b2ant_RfShrink (int ,int ,int) ;

__attribute__((used)) static void halbtc8723b2ant_SwMechanism1(
 PBTC_COEXIST pBtCoexist,
 bool bShrinkRxLPF,
 bool bLowPenaltyRA,
 bool bLimitedDIG,
 bool bBTLNAConstrain
)
{
 halbtc8723b2ant_RfShrink(pBtCoexist, NORMAL_EXEC, bShrinkRxLPF);
 halbtc8723b2ant_LowPenaltyRa(pBtCoexist, NORMAL_EXEC, bLowPenaltyRA);
}
