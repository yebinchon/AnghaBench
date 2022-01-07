
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {struct zfcp_erp_action* erp_action; } ;
struct zfcp_erp_action {int dummy; } ;
struct timer_list {int dummy; } ;


 int ZFCP_STATUS_ERP_TIMEDOUT ;
 struct zfcp_fsf_req* from_timer (int ,struct timer_list*,int ) ;
 struct zfcp_fsf_req* fsf_req ;
 int timer ;
 int zfcp_erp_notify (struct zfcp_erp_action*,int ) ;

void zfcp_erp_timeout_handler(struct timer_list *t)
{
 struct zfcp_fsf_req *fsf_req = from_timer(fsf_req, t, timer);
 struct zfcp_erp_action *act = fsf_req->erp_action;

 zfcp_erp_notify(act, ZFCP_STATUS_ERP_TIMEDOUT);
}
