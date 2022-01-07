
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_port {int wwpn; struct zfcp_adapter* adapter; } ;
struct TYPE_12__ {int * resp; int * req; int * handler_data; int handler; struct zfcp_port* port; } ;
struct TYPE_9__ {int fn_wwpn; } ;
struct zfcp_fc_gid_pn_rsp {TYPE_3__ gid_pn; int ct_hdr; } ;
struct TYPE_7__ {struct zfcp_fc_gid_pn_rsp rsp; struct zfcp_fc_gid_pn_rsp req; } ;
struct TYPE_8__ {TYPE_1__ gid_pn; } ;
struct zfcp_fc_req {TYPE_6__ ct_els; int sg_rsp; int sg_req; TYPE_2__ u; } ;
struct zfcp_fc_gid_pn_req {TYPE_3__ gid_pn; int ct_hdr; } ;
struct TYPE_11__ {int gid_pn_req; } ;
struct zfcp_adapter {TYPE_5__ pool; TYPE_4__* gs; } ;
struct TYPE_10__ {int ds; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int FC_NS_GID_PN ;
 int ZFCP_FC_CTELS_TMO ;
 int ZFCP_FC_CT_SIZE_PAGE ;
 int completion ;
 int cpu_to_be64 (int ) ;
 int sg_init_one (int *,struct zfcp_fc_gid_pn_rsp*,int) ;
 int wait_for_completion (int *) ;
 int zfcp_fc_complete ;
 int zfcp_fc_ct_ns_init (int *,int ,int ) ;
 int zfcp_fc_ns_gid_pn_eval (struct zfcp_fc_req*) ;
 int zfcp_fsf_send_ct (int *,TYPE_6__*,int ,int ) ;

__attribute__((used)) static int zfcp_fc_ns_gid_pn_request(struct zfcp_port *port,
         struct zfcp_fc_req *fc_req)
{
 struct zfcp_adapter *adapter = port->adapter;
 DECLARE_COMPLETION_ONSTACK(completion);
 struct zfcp_fc_gid_pn_req *gid_pn_req = &fc_req->u.gid_pn.req;
 struct zfcp_fc_gid_pn_rsp *gid_pn_rsp = &fc_req->u.gid_pn.rsp;
 int ret;


 fc_req->ct_els.port = port;
 fc_req->ct_els.handler = zfcp_fc_complete;
 fc_req->ct_els.handler_data = &completion;
 fc_req->ct_els.req = &fc_req->sg_req;
 fc_req->ct_els.resp = &fc_req->sg_rsp;
 sg_init_one(&fc_req->sg_req, gid_pn_req, sizeof(*gid_pn_req));
 sg_init_one(&fc_req->sg_rsp, gid_pn_rsp, sizeof(*gid_pn_rsp));

 zfcp_fc_ct_ns_init(&gid_pn_req->ct_hdr,
      FC_NS_GID_PN, ZFCP_FC_CT_SIZE_PAGE);
 gid_pn_req->gid_pn.fn_wwpn = cpu_to_be64(port->wwpn);

 ret = zfcp_fsf_send_ct(&adapter->gs->ds, &fc_req->ct_els,
          adapter->pool.gid_pn_req,
          ZFCP_FC_CTELS_TMO);
 if (!ret) {
  wait_for_completion(&completion);
  zfcp_fc_ns_gid_pn_eval(fc_req);
 }
 return ret;
}
