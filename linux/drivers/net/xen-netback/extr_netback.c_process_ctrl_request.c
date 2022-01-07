
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xenvif {int dummy; } ;
struct xen_netif_ctrl_request {int type; int * data; } ;


 int XEN_NETBK_MAX_HASH_MAPPING_SIZE ;
 int XEN_NETIF_CTRL_STATUS_NOT_SUPPORTED ;
 int XEN_NETIF_CTRL_STATUS_SUCCESS ;







 int make_ctrl_response (struct xenvif*,struct xen_netif_ctrl_request const*,int ,int ) ;
 int push_ctrl_response (struct xenvif*) ;
 int xenvif_get_hash_flags (struct xenvif*,int *) ;
 int xenvif_set_hash_alg (struct xenvif*,int ) ;
 int xenvif_set_hash_flags (struct xenvif*,int ) ;
 int xenvif_set_hash_key (struct xenvif*,int ,int ) ;
 int xenvif_set_hash_mapping (struct xenvif*,int ,int ,int ) ;
 int xenvif_set_hash_mapping_size (struct xenvif*,int ) ;

__attribute__((used)) static void process_ctrl_request(struct xenvif *vif,
     const struct xen_netif_ctrl_request *req)
{
 u32 status = XEN_NETIF_CTRL_STATUS_NOT_SUPPORTED;
 u32 data = 0;

 switch (req->type) {
 case 132:
  status = xenvif_set_hash_alg(vif, req->data[0]);
  break;

 case 134:
  status = xenvif_get_hash_flags(vif, &data);
  break;

 case 131:
  status = xenvif_set_hash_flags(vif, req->data[0]);
  break;

 case 130:
  status = xenvif_set_hash_key(vif, req->data[0],
          req->data[1]);
  break;

 case 133:
  status = XEN_NETIF_CTRL_STATUS_SUCCESS;
  data = XEN_NETBK_MAX_HASH_MAPPING_SIZE;
  break;

 case 128:
  status = xenvif_set_hash_mapping_size(vif,
            req->data[0]);
  break;

 case 129:
  status = xenvif_set_hash_mapping(vif, req->data[0],
       req->data[1],
       req->data[2]);
  break;

 default:
  break;
 }

 make_ctrl_response(vif, req, status, data);
 push_ctrl_response(vif);
}
