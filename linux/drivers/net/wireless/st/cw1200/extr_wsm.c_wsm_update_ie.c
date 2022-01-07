
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_update_ie {int length; int ies; int count; int what; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT (struct wsm_buf*,int ,int ) ;
 int WSM_PUT16 (struct wsm_buf*,int ) ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_update_ie(struct cw1200_common *priv,
    const struct wsm_update_ie *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;

 wsm_cmd_lock(priv);

 WSM_PUT16(buf, arg->what);
 WSM_PUT16(buf, arg->count);
 WSM_PUT(buf, arg->ies, arg->length);

 ret = wsm_cmd_send(priv, buf, ((void*)0), 0x001B, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
