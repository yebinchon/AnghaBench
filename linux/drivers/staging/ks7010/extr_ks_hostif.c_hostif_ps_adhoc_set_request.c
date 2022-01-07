
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct ks_wlan_private {TYPE_1__ reg; } ;
struct hostif_ps_adhoc_set_request {int channel; int request; } ;


 int HIF_PS_ADH_SET_REQ ;
 int cpu_to_le16 (int ) ;
 int hif_align_size (int) ;
 struct hostif_ps_adhoc_set_request* hostif_generic_request (int,int ) ;
 int init_request (struct ks_wlan_private*,int *) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_ps_adhoc_set_request*,int ) ;

__attribute__((used)) static
void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
{
 struct hostif_ps_adhoc_set_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_PS_ADH_SET_REQ);
 if (!pp)
  return;

 init_request(priv, &pp->request);
 pp->channel = cpu_to_le16(priv->reg.channel);

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
}
