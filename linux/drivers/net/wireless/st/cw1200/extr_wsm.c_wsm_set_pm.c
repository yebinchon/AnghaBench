
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_set_pm {int min_auto_pspoll_period; int ap_psm_change_period; int fast_psm_idle_period; int mode; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int ps_mode_switch_in_progress; struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT8 (struct wsm_buf*,int ) ;
 int WSM_SET_PM_REQ_ID ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int ,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_set_pm(struct cw1200_common *priv, const struct wsm_set_pm *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;
 priv->ps_mode_switch_in_progress = 1;

 wsm_cmd_lock(priv);

 WSM_PUT8(buf, arg->mode);
 WSM_PUT8(buf, arg->fast_psm_idle_period);
 WSM_PUT8(buf, arg->ap_psm_change_period);
 WSM_PUT8(buf, arg->min_auto_pspoll_period);

 ret = wsm_cmd_send(priv, buf, ((void*)0),
      WSM_SET_PM_REQ_ID, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
