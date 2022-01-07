
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks_wlan_private {int dummy; } ;
struct hostif_mib_get_request {int mib_attribute; } ;


 int HIF_MIB_GET_REQ ;
 int cpu_to_le32 (int ) ;
 int hif_align_size (int) ;
 struct hostif_mib_get_request* hostif_generic_request (int,int ) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_mib_get_request*,int ) ;

__attribute__((used)) static void hostif_mib_get_request(struct ks_wlan_private *priv,
       u32 mib_attribute)
{
 struct hostif_mib_get_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_MIB_GET_REQ);
 if (!pp)
  return;

 pp->mib_attribute = cpu_to_le32(mib_attribute);

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
}
