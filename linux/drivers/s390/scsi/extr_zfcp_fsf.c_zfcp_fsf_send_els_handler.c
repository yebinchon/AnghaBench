
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct zfcp_fsf_ct_els* data; } ;
struct zfcp_fsf_ct_els {int handler_data; int (* handler ) (int ) ;int status; } ;
struct TYPE_3__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; TYPE_1__ fsf_status_qual; } ;
struct TYPE_4__ {struct fsf_qtcb_header header; } ;


 int EINVAL ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int stub1 (int ) ;
 int zfcp_dbf_san_res (char*,struct zfcp_fsf_req*) ;
 int zfcp_fsf_class_not_supp (struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_fsf_send_els_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_fsf_ct_els *send_els = req->data;
 struct fsf_qtcb_header *header = &req->qtcb->header;

 send_els->status = -EINVAL;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  goto skip_fsfstatus;

 switch (header->fsf_status) {
 case 136:
  send_els->status = 0;
  zfcp_dbf_san_res("fsselh1", req);
  break;
 case 131:
  zfcp_fsf_class_not_supp(req);
  break;
 case 138:
  switch (header->fsf_status_qual.word[0]){
  case 130:
  case 128:
  case 129:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 137:
 case 135:
 case 134:
 case 133:
  break;
 case 132:


 default:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }
skip_fsfstatus:
 if (send_els->handler)
  send_els->handler(send_els->handler_data);
}
