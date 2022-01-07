
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wsm_map_link {int * mac_addr; int link_id; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT (struct wsm_buf*,int *,int) ;
 int WSM_PUT16 (struct wsm_buf*,int ) ;
 int WSM_TX_LINK_ID (int ) ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_map_link(struct cw1200_common *priv, const struct wsm_map_link *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;
 u16 cmd = 0x001C | WSM_TX_LINK_ID(arg->link_id);

 wsm_cmd_lock(priv);

 WSM_PUT(buf, &arg->mac_addr[0], sizeof(arg->mac_addr));
 WSM_PUT16(buf, 0);

 ret = wsm_cmd_send(priv, buf, ((void*)0), cmd, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
