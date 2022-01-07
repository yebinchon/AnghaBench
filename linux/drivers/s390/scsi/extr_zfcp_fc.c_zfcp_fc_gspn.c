
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


struct zfcp_fsf_ct_els {int status; int * resp; int * req; int * handler_data; int handler; } ;
struct TYPE_11__ {char* fp_name; int fp_fid; } ;
struct zfcp_fc_gspn_rsp {TYPE_5__ gspn; int ct_hdr; } ;
struct TYPE_7__ {struct zfcp_fc_gspn_rsp rsp; struct zfcp_fc_gspn_rsp req; } ;
struct TYPE_8__ {TYPE_1__ gspn; } ;
struct zfcp_fc_req {int sg_rsp; int sg_req; TYPE_2__ u; struct zfcp_fsf_ct_els ct_els; } ;
struct zfcp_fc_gspn_req {TYPE_5__ gspn; int ct_hdr; } ;
struct zfcp_adapter {int scsi_host; TYPE_4__* ccw_device; TYPE_3__* gs; } ;
struct TYPE_12__ {int nodename; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int ds; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int FC_NS_GSPN_ID ;
 scalar_t__ FC_PORTTYPE_NPIV ;
 int FC_SYMBOLIC_NAME_SIZE ;
 int ZFCP_FC_CTELS_TMO ;
 int completion ;
 char* dev_name (int *) ;
 int fc_host_port_id (int ) ;
 scalar_t__ fc_host_port_type (int ) ;
 int fc_host_symbolic_name (int ) ;
 int hton24 (int ,int ) ;
 TYPE_6__* init_utsname () ;
 int sg_init_one (int *,struct zfcp_fc_gspn_rsp*,int) ;
 int snprintf (int ,int ,char*,char*,char*,char*,int ) ;
 int strlcpy (int ,char*,int ) ;
 int strstr (char*,char*) ;
 int wait_for_completion (int *) ;
 int zfcp_fc_complete ;
 int zfcp_fc_ct_ns_init (int *,int ,int ) ;
 int zfcp_fsf_send_ct (int *,struct zfcp_fsf_ct_els*,int *,int ) ;

__attribute__((used)) static int zfcp_fc_gspn(struct zfcp_adapter *adapter,
   struct zfcp_fc_req *fc_req)
{
 DECLARE_COMPLETION_ONSTACK(completion);
 char devno[] = "DEVNO:";
 struct zfcp_fsf_ct_els *ct_els = &fc_req->ct_els;
 struct zfcp_fc_gspn_req *gspn_req = &fc_req->u.gspn.req;
 struct zfcp_fc_gspn_rsp *gspn_rsp = &fc_req->u.gspn.rsp;
 int ret;

 zfcp_fc_ct_ns_init(&gspn_req->ct_hdr, FC_NS_GSPN_ID,
      FC_SYMBOLIC_NAME_SIZE);
 hton24(gspn_req->gspn.fp_fid, fc_host_port_id(adapter->scsi_host));

 sg_init_one(&fc_req->sg_req, gspn_req, sizeof(*gspn_req));
 sg_init_one(&fc_req->sg_rsp, gspn_rsp, sizeof(*gspn_rsp));

 ct_els->handler = zfcp_fc_complete;
 ct_els->handler_data = &completion;
 ct_els->req = &fc_req->sg_req;
 ct_els->resp = &fc_req->sg_rsp;

 ret = zfcp_fsf_send_ct(&adapter->gs->ds, ct_els, ((void*)0),
          ZFCP_FC_CTELS_TMO);
 if (ret)
  return ret;

 wait_for_completion(&completion);
 if (ct_els->status)
  return ct_els->status;

 if (fc_host_port_type(adapter->scsi_host) == FC_PORTTYPE_NPIV &&
     !(strstr(gspn_rsp->gspn.fp_name, devno)))
  snprintf(fc_host_symbolic_name(adapter->scsi_host),
    FC_SYMBOLIC_NAME_SIZE, "%s%s %s NAME: %s",
    gspn_rsp->gspn.fp_name, devno,
    dev_name(&adapter->ccw_device->dev),
    init_utsname()->nodename);
 else
  strlcpy(fc_host_symbolic_name(adapter->scsi_host),
   gspn_rsp->gspn.fp_name, FC_SYMBOLIC_NAME_SIZE);

 return 0;
}
