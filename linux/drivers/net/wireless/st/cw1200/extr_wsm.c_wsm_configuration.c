
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_configuration {int dpdData_size; int dpdData; int dot11StationId; int dot11RtsThreshold; int dot11MaxReceiveLifeTime; int dot11MaxTransmitMsduLifeTime; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int WSM_CMD_TIMEOUT ;
 int WSM_CONFIGURATION_REQ_ID ;
 int WSM_PUT (struct wsm_buf*,int ,int) ;
 int WSM_PUT16 (struct wsm_buf*,int) ;
 int WSM_PUT32 (struct wsm_buf*,int ) ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,struct wsm_configuration*,int ,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_configuration(struct cw1200_common *priv, struct wsm_configuration *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;

 wsm_cmd_lock(priv);

 WSM_PUT32(buf, arg->dot11MaxTransmitMsduLifeTime);
 WSM_PUT32(buf, arg->dot11MaxReceiveLifeTime);
 WSM_PUT32(buf, arg->dot11RtsThreshold);


 WSM_PUT16(buf, arg->dpdData_size + 12);
 WSM_PUT16(buf, 1);
 WSM_PUT(buf, arg->dot11StationId, ETH_ALEN);
 WSM_PUT16(buf, 5);
 WSM_PUT(buf, arg->dpdData, arg->dpdData_size);

 ret = wsm_cmd_send(priv, buf, arg,
      WSM_CONFIGURATION_REQ_ID, WSM_CMD_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
