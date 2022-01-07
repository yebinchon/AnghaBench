
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_remove_key {int index; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT16 (struct wsm_buf*,int ) ;
 int WSM_PUT8 (struct wsm_buf*,int ) ;
 int WSM_REMOVE_KEY_REQ_ID ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int ,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_remove_key(struct cw1200_common *priv, const struct wsm_remove_key *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;

 wsm_cmd_lock(priv);

 WSM_PUT8(buf, arg->index);
 WSM_PUT8(buf, 0);
 WSM_PUT16(buf, 0);

 ret = wsm_cmd_send(priv, buf, ((void*)0),
      WSM_REMOVE_KEY_REQ_ID, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
