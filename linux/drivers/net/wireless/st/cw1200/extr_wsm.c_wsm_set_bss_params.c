
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_set_bss_params {int beacon_lost_count; int operational_rate_set; int aid; scalar_t__ reset_beacon_loss; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT16 (struct wsm_buf*,int ) ;
 int WSM_PUT32 (struct wsm_buf*,int ) ;
 int WSM_PUT8 (struct wsm_buf*,int) ;
 int WSM_SET_BSS_PARAMS_REQ_ID ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int ,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_set_bss_params(struct cw1200_common *priv,
         const struct wsm_set_bss_params *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;

 wsm_cmd_lock(priv);

 WSM_PUT8(buf, (arg->reset_beacon_loss ? 0x1 : 0));
 WSM_PUT8(buf, arg->beacon_lost_count);
 WSM_PUT16(buf, arg->aid);
 WSM_PUT32(buf, arg->operational_rate_set);

 ret = wsm_cmd_send(priv, buf, ((void*)0),
      WSM_SET_BSS_PARAMS_REQ_ID, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
