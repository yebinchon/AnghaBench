
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct subchannel_id {int dummy; } ;
struct TYPE_3__ {int supported_funcs; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;
struct ccw_device {int dummy; } ;


 struct ccw_device* CARD_DDEV (struct qeth_card*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int anev_reset ;
 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int qdio_pnso_brinfo (struct subchannel_id,int,int *,int *,struct qeth_card*) ;
 int qeth_anset_makerc (struct qeth_card*,int,int ) ;
 int qeth_bridge_emit_host_event (struct qeth_card*,int ,int ,int *,int *) ;
 int * qeth_bridgeport_an_set_cb ;

int qeth_bridgeport_an_set(struct qeth_card *card, int enable)
{
 int rc;
 u16 response;
 struct ccw_device *ddev;
 struct subchannel_id schid;

 if (!card)
  return -EINVAL;
 if (!card->options.sbp.supported_funcs)
  return -EOPNOTSUPP;
 ddev = CARD_DDEV(card);
 ccw_device_get_schid(ddev, &schid);

 if (enable) {
  qeth_bridge_emit_host_event(card, anev_reset, 0, ((void*)0), ((void*)0));
  rc = qdio_pnso_brinfo(schid, 1, &response,
   qeth_bridgeport_an_set_cb, card);
 } else
  rc = qdio_pnso_brinfo(schid, 0, &response, ((void*)0), ((void*)0));
 return qeth_anset_makerc(card, rc, response);
}
