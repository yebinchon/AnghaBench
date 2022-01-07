
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_obj {struct cmd_obj* parmbuf; } ;
struct TYPE_3__ {int bcompleted; } ;
struct TYPE_4__ {TYPE_1__ workparam; } ;
struct _adapter {TYPE_2__ mppriv; } ;


 int kfree (struct cmd_obj*) ;

void r8712_getbbrfreg_cmdrsp_callback(struct _adapter *padapter,
          struct cmd_obj *pcmd)
{
 kfree(pcmd->parmbuf);
 kfree(pcmd);
 padapter->mppriv.workparam.bcompleted = 1;
}
