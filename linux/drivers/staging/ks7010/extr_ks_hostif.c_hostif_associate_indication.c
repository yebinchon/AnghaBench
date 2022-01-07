
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct ks_wlan_private {int net_dev; scalar_t__ rxp; } ;
struct association_response {int resp_ies_size; } ;
struct association_request {int req_ies_size; } ;
typedef int associnfo_leader1 ;
typedef int associnfo_leader0 ;


 int IWEVCUSTOM ;
 int IW_CUSTOM_MAX ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,char const*,int) ;
 int memset (union iwreq_data*,int ,int) ;
 int sprintf (char*,char*,...) ;
 int wireless_send_event (int ,int ,union iwreq_data*,char*) ;

__attribute__((used)) static
void hostif_associate_indication(struct ks_wlan_private *priv)
{
 struct association_request *assoc_req;
 struct association_response *assoc_resp;
 unsigned char *pb;
 union iwreq_data wrqu;
 char buf[IW_CUSTOM_MAX];
 char *pbuf = &buf[0];
 int i;

 static const char associnfo_leader0[] = "ASSOCINFO(ReqIEs=";
 static const char associnfo_leader1[] = " RespIEs=";

 assoc_req = (struct association_request *)(priv->rxp);
 assoc_resp = (struct association_response *)(assoc_req + 1);
 pb = (unsigned char *)(assoc_resp + 1);

 memset(&wrqu, 0, sizeof(wrqu));
 memcpy(pbuf, associnfo_leader0, sizeof(associnfo_leader0) - 1);
 wrqu.data.length += sizeof(associnfo_leader0) - 1;
 pbuf += sizeof(associnfo_leader0) - 1;

 for (i = 0; i < le16_to_cpu(assoc_req->req_ies_size); i++)
  pbuf += sprintf(pbuf, "%02x", *(pb + i));
 wrqu.data.length += (le16_to_cpu(assoc_req->req_ies_size)) * 2;

 memcpy(pbuf, associnfo_leader1, sizeof(associnfo_leader1) - 1);
 wrqu.data.length += sizeof(associnfo_leader1) - 1;
 pbuf += sizeof(associnfo_leader1) - 1;

 pb += le16_to_cpu(assoc_req->req_ies_size);
 for (i = 0; i < le16_to_cpu(assoc_resp->resp_ies_size); i++)
  pbuf += sprintf(pbuf, "%02x", *(pb + i));
 wrqu.data.length += (le16_to_cpu(assoc_resp->resp_ies_size)) * 2;

 pbuf += sprintf(pbuf, ")");
 wrqu.data.length += 1;

 wireless_send_event(priv->net_dev, IWEVCUSTOM, &wrqu, buf);
}
