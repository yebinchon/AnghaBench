
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_obj {scalar_t__ cmdcode; scalar_t__ rspsz; struct cmd_obj* rsp; struct cmd_obj* parmbuf; } ;


 scalar_t__ _CreateBss_CMD_ ;
 scalar_t__ _JoinBss_CMD_ ;
 int kfree (struct cmd_obj*) ;

void rtw_free_cmd_obj(struct cmd_obj *pcmd)
{
 if ((pcmd->cmdcode != _JoinBss_CMD_) && (pcmd->cmdcode != _CreateBss_CMD_)) {

  kfree(pcmd->parmbuf);
 }

 if (pcmd->rsp) {
  if (pcmd->rspsz != 0) {

   kfree(pcmd->rsp);
  }
 }


 kfree(pcmd);
}
