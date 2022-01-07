
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct ks_wlan_private {scalar_t__ scan_ind_count; TYPE_1__ aplist; } ;
struct hostif_start_request {int mode; } ;


 int HIF_START_REQ ;
 int cpu_to_le16 (unsigned char) ;
 int hif_align_size (int) ;
 struct hostif_start_request* hostif_generic_request (int,int ) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_start_request*,int ) ;

__attribute__((used)) static
void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
{
 struct hostif_start_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_START_REQ);
 if (!pp)
  return;

 pp->mode = cpu_to_le16(mode);

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));

 priv->aplist.size = 0;
 priv->scan_ind_count = 0;
}
