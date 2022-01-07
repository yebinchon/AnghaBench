
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cmd_priv {int cmdthd_running; TYPE_1__* padapter; } ;
struct cmd_obj {scalar_t__ cmdcode; } ;
struct TYPE_2__ {int hw_init_completed; } ;


 scalar_t__ GEN_CMD_CODE (int ) ;
 int _FAIL ;
 int _SUCCESS ;
 int _SetChannelPlan ;
 int atomic_read (int *) ;

int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
{
 u8 bAllow = 0;

 if (cmd_obj->cmdcode == GEN_CMD_CODE(_SetChannelPlan))
  bAllow = 1;

 if ((pcmdpriv->padapter->hw_init_completed == 0 && bAllow == 0)
  || atomic_read(&(pcmdpriv->cmdthd_running)) == 0
 ) {






  return _FAIL;
 }
 return _SUCCESS;
}
