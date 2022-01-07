
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int dummy; } ;
struct hostif_stop_request {int dummy; } ;


 int HIF_STOP_REQ ;
 int hif_align_size (int) ;
 struct hostif_stop_request* hostif_generic_request (int,int ) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_stop_request*,int ) ;

__attribute__((used)) static
void hostif_stop_request(struct ks_wlan_private *priv)
{
 struct hostif_stop_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_STOP_REQ);
 if (!pp)
  return;

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
}
