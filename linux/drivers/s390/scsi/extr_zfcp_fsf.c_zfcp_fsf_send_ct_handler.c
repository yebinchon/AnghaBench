
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_1__* qtcb; struct zfcp_fsf_ct_els* data; struct zfcp_adapter* adapter; } ;
struct zfcp_fsf_ct_els {int handler_data; int (* handler ) (int ) ;int status; } ;
struct zfcp_adapter {int dummy; } ;
struct TYPE_4__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; TYPE_2__ fsf_status_qual; } ;
struct TYPE_3__ {struct fsf_qtcb_header header; } ;


 int EINVAL ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int stub1 (int ) ;
 int zfcp_dbf_san_res (char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_fsf_class_not_supp (struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_fsf_send_ct_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_adapter *adapter = req->adapter;
 struct zfcp_fsf_ct_els *ct = req->data;
 struct fsf_qtcb_header *header = &req->qtcb->header;

 ct->status = -EINVAL;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  goto skip_fsfstatus;

 switch (header->fsf_status) {
        case 137:
  ct->status = 0;
  zfcp_dbf_san_res("fsscth2", req);
  break;
        case 130:
  zfcp_fsf_class_not_supp(req);
  break;
        case 139:
                switch (header->fsf_status_qual.word[0]){
                case 129:
                case 128:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
                }
                break;
        case 135:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 134:
  zfcp_erp_adapter_reopen(adapter, 0, "fsscth1");

 case 138:
 case 136:
 case 133:
 case 132:
 case 131:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }

skip_fsfstatus:
 if (ct->handler)
  ct->handler(ct->handler_data);
}
