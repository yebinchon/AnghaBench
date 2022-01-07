
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {int status; struct fsf_qtcb* qtcb; } ;
struct TYPE_3__ {int link_down_info; } ;
struct TYPE_4__ {int fsf_status; TYPE_1__ fsf_status_qual; } ;
struct fsf_qtcb {TYPE_2__ header; } ;




 int ZFCP_STATUS_FSFREQ_ERROR ;
 int zfcp_fsf_exchange_port_evaluate (struct zfcp_fsf_req*) ;
 int zfcp_fsf_link_down_info_eval (struct zfcp_fsf_req*,int *) ;

__attribute__((used)) static void zfcp_fsf_exchange_port_data_handler(struct zfcp_fsf_req *req)
{
 struct fsf_qtcb *qtcb = req->qtcb;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 switch (qtcb->header.fsf_status) {
 case 128:
  zfcp_fsf_exchange_port_evaluate(req);
  break;
 case 129:
  zfcp_fsf_exchange_port_evaluate(req);
  zfcp_fsf_link_down_info_eval(req,
   &qtcb->header.fsf_status_qual.link_down_info);
  break;
 }
}
