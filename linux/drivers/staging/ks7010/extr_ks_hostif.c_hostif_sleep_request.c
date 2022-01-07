
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeup_request; } ;
struct ks_wlan_private {int net_dev; int rw_dwork; int wq; TYPE_1__ sleepstatus; } ;
struct hostif_sleep_request {int dummy; } ;
typedef enum sleep_mode_type { ____Placeholder_sleep_mode_type } sleep_mode_type ;


 int HIF_SLEEP_REQ ;
 int SLP_ACTIVE ;
 int SLP_SLEEP ;
 int atomic_set (int *,int) ;
 int hif_align_size (int) ;
 struct hostif_sleep_request* hostif_generic_request (int,int ) ;
 int netdev_err (int ,char*,long) ;
 int queue_delayed_work (int ,int *,int) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_sleep_request*,int ) ;

__attribute__((used)) static
void hostif_sleep_request(struct ks_wlan_private *priv,
     enum sleep_mode_type mode)
{
 struct hostif_sleep_request *pp;

 if (mode == SLP_SLEEP) {
  pp = hostif_generic_request(sizeof(*pp), HIF_SLEEP_REQ);
  if (!pp)
   return;

  send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
 } else if (mode == SLP_ACTIVE) {
  atomic_set(&priv->sleepstatus.wakeup_request, 1);
  queue_delayed_work(priv->wq, &priv->rw_dwork, 1);
 } else {
  netdev_err(priv->net_dev, "invalid mode %ld\n", (long)mode);
  return;
 }
}
