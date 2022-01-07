
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int WSM_CMD_TIMEOUT ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_start_find(struct cw1200_common *priv)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;

 wsm_cmd_lock(priv);
 ret = wsm_cmd_send(priv, buf, ((void*)0), 0x0019, WSM_CMD_TIMEOUT);
 wsm_cmd_unlock(priv);
 return ret;
}
