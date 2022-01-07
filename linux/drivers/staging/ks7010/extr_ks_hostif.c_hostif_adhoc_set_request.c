
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int * body; } ;
struct TYPE_6__ {TYPE_2__ ssid; int channel; } ;
struct ks_wlan_private {TYPE_3__ reg; } ;
struct TYPE_4__ {int * body; int size; } ;
struct hostif_adhoc_set_request {TYPE_1__ ssid; int channel; int request; } ;


 int HIF_ADH_SET_REQ ;
 int cpu_to_le16 (int ) ;
 int hif_align_size (int) ;
 struct hostif_adhoc_set_request* hostif_generic_request (int,int ) ;
 int init_request (struct ks_wlan_private*,int *) ;
 int memcpy (int *,int *,int ) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_adhoc_set_request*,int ) ;

__attribute__((used)) static
void hostif_adhoc_set_request(struct ks_wlan_private *priv)
{
 struct hostif_adhoc_set_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_ADH_SET_REQ);
 if (!pp)
  return;

 init_request(priv, &pp->request);
 pp->channel = cpu_to_le16(priv->reg.channel);
 pp->ssid.size = priv->reg.ssid.size;
 memcpy(&pp->ssid.body[0], &priv->reg.ssid.body[0], priv->reg.ssid.size);

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
}
