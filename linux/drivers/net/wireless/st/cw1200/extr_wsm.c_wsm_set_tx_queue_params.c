
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wsm_set_tx_queue_params {int ackPolicy; int allowedMediumTime; int maxTransmitLifetime; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT16 (struct wsm_buf*,int ) ;
 int WSM_PUT32 (struct wsm_buf*,int ) ;
 int WSM_PUT8 (struct wsm_buf*,int) ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_set_tx_queue_params(struct cw1200_common *priv,
  const struct wsm_set_tx_queue_params *arg, u8 id)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;
 u8 queue_id_to_wmm_aci[] = {3, 2, 0, 1};

 wsm_cmd_lock(priv);

 WSM_PUT8(buf, queue_id_to_wmm_aci[id]);
 WSM_PUT8(buf, 0);
 WSM_PUT8(buf, arg->ackPolicy);
 WSM_PUT8(buf, 0);
 WSM_PUT32(buf, arg->maxTransmitLifetime);
 WSM_PUT16(buf, arg->allowedMediumTime);
 WSM_PUT16(buf, 0);

 ret = wsm_cmd_send(priv, buf, ((void*)0), 0x0012, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
