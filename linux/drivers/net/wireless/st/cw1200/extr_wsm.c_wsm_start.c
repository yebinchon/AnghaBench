
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_start {int basic_rate_set; int ssid; int ssid_len; int probe_delay; int preamble; int dtim_period; int beacon_interval; int ct_window; int channel_number; int band; int mode; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int tx_burst_idx; struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_START_TIMEOUT ;
 int WSM_PUT (struct wsm_buf*,int ,int) ;
 int WSM_PUT16 (struct wsm_buf*,int ) ;
 int WSM_PUT32 (struct wsm_buf*,int ) ;
 int WSM_PUT8 (struct wsm_buf*,int ) ;
 int WSM_START_REQ_ID ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,int *,int ,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_start(struct cw1200_common *priv, const struct wsm_start *arg)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;

 wsm_cmd_lock(priv);

 WSM_PUT8(buf, arg->mode);
 WSM_PUT8(buf, arg->band);
 WSM_PUT16(buf, arg->channel_number);
 WSM_PUT32(buf, arg->ct_window);
 WSM_PUT32(buf, arg->beacon_interval);
 WSM_PUT8(buf, arg->dtim_period);
 WSM_PUT8(buf, arg->preamble);
 WSM_PUT8(buf, arg->probe_delay);
 WSM_PUT8(buf, arg->ssid_len);
 WSM_PUT(buf, arg->ssid, sizeof(arg->ssid));
 WSM_PUT32(buf, arg->basic_rate_set);

 priv->tx_burst_idx = -1;
 ret = wsm_cmd_send(priv, buf, ((void*)0),
      WSM_START_REQ_ID, WSM_CMD_START_TIMEOUT);

 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
