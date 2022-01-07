
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_obj {struct cmd_obj* parmbuf; } ;
struct adapter {int dummy; } ;


 int kfree (struct cmd_obj*) ;

void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter, struct cmd_obj *pcmd)
{

 kfree(pcmd->parmbuf);
 kfree(pcmd);
}
