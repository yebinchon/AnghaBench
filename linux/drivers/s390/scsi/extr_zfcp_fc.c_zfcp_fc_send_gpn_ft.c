
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_fsf_ct_els {int * resp; int * req; int * handler_data; int handler; } ;
struct TYPE_7__ {int fn_fc4_type; } ;
struct zfcp_fc_gpn_ft_req {TYPE_3__ gpn_ft; int ct_hdr; } ;
struct TYPE_5__ {struct zfcp_fc_gpn_ft_req req; } ;
struct TYPE_6__ {TYPE_1__ gpn_ft; } ;
struct zfcp_fc_req {int sg_rsp; int sg_req; TYPE_2__ u; struct zfcp_fsf_ct_els ct_els; } ;
struct zfcp_adapter {TYPE_4__* gs; } ;
struct TYPE_8__ {int ds; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int FC_NS_GPN_FT ;
 int FC_TYPE_FCP ;
 int ZFCP_FC_CTELS_TMO ;
 int completion ;
 int wait_for_completion (int *) ;
 int zfcp_fc_complete ;
 int zfcp_fc_ct_ns_init (int *,int ,int) ;
 int zfcp_fsf_send_ct (int *,struct zfcp_fsf_ct_els*,int *,int ) ;

__attribute__((used)) static int zfcp_fc_send_gpn_ft(struct zfcp_fc_req *fc_req,
          struct zfcp_adapter *adapter, int max_bytes)
{
 struct zfcp_fsf_ct_els *ct_els = &fc_req->ct_els;
 struct zfcp_fc_gpn_ft_req *req = &fc_req->u.gpn_ft.req;
 DECLARE_COMPLETION_ONSTACK(completion);
 int ret;

 zfcp_fc_ct_ns_init(&req->ct_hdr, FC_NS_GPN_FT, max_bytes);
 req->gpn_ft.fn_fc4_type = FC_TYPE_FCP;

 ct_els->handler = zfcp_fc_complete;
 ct_els->handler_data = &completion;
 ct_els->req = &fc_req->sg_req;
 ct_els->resp = &fc_req->sg_rsp;

 ret = zfcp_fsf_send_ct(&adapter->gs->ds, ct_els, ((void*)0),
          ZFCP_FC_CTELS_TMO);
 if (!ret)
  wait_for_completion(&completion);
 return ret;
}
