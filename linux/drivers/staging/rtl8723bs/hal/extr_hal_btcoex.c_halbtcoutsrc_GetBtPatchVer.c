
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int btRealFwVer; } ;
struct TYPE_5__ {TYPE_1__ btInfo; } ;
typedef TYPE_2__* PBTC_COEXIST ;



__attribute__((used)) static u32 halbtcoutsrc_GetBtPatchVer(PBTC_COEXIST pBtCoexist)
{
 return pBtCoexist->btInfo.btRealFwVer;
}
