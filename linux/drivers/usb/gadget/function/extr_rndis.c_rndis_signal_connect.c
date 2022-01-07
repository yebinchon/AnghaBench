
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_params {int media_state; } ;


 int RNDIS_MEDIA_STATE_CONNECTED ;
 int RNDIS_STATUS_MEDIA_CONNECT ;
 int rndis_indicate_status_msg (struct rndis_params*,int ) ;

int rndis_signal_connect(struct rndis_params *params)
{
 params->media_state = RNDIS_MEDIA_STATE_CONNECTED;
 return rndis_indicate_status_msg(params, RNDIS_STATUS_MEDIA_CONNECT);
}
