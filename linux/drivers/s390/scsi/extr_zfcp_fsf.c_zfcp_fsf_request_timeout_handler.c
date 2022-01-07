
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int dummy; } ;
struct timer_list {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 struct zfcp_fsf_req* from_timer (int ,struct timer_list*,int ) ;
 struct zfcp_fsf_req* fsf_req ;
 int timer ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_qdio_siosl (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_fsf_request_timeout_handler(struct timer_list *t)
{
 struct zfcp_fsf_req *fsf_req = from_timer(fsf_req, t, timer);
 struct zfcp_adapter *adapter = fsf_req->adapter;

 zfcp_qdio_siosl(adapter);
 zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
    "fsrth_1");
}
