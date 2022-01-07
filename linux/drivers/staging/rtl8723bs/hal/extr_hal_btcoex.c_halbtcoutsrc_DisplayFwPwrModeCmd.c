
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * pwrModeVal; int * cliBuf; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BT_TMP_BUF_SIZE ;
 int CL_PRINTF (int *) ;
 int CL_SPRINTF (int *,int ,char*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void halbtcoutsrc_DisplayFwPwrModeCmd(PBTC_COEXIST pBtCoexist)
{
 u8 *cliBuf = pBtCoexist->cliBuf;

 CL_SPRINTF(cliBuf, BT_TMP_BUF_SIZE, "\r\n %-35s = %02x %02x %02x %02x %02x %02x ", "Power mode cmd ", pBtCoexist->pwrModeVal[0], pBtCoexist->pwrModeVal[1],

  pBtCoexist->pwrModeVal[2], pBtCoexist->pwrModeVal[3],
  pBtCoexist->pwrModeVal[4], pBtCoexist->pwrModeVal[5]);
 CL_PRINTF(cliBuf);
}
