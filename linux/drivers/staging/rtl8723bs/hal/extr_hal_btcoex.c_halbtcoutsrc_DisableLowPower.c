
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ bBtDisableLowPwr; } ;
struct TYPE_7__ {TYPE_1__ btInfo; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int halbtcoutsrc_LeaveLowPower (TYPE_2__*) ;
 int halbtcoutsrc_NormalLowPower (TYPE_2__*) ;

__attribute__((used)) static void halbtcoutsrc_DisableLowPower(PBTC_COEXIST pBtCoexist, u8 bLowPwrDisable)
{
 pBtCoexist->btInfo.bBtDisableLowPwr = bLowPwrDisable;
 if (bLowPwrDisable)
  halbtcoutsrc_LeaveLowPower(pBtCoexist);
 else
  halbtcoutsrc_NormalLowPower(pBtCoexist);
}
