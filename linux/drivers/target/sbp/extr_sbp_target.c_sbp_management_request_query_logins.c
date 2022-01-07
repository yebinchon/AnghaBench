
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct sbp_management_request {TYPE_1__ status; } ;
struct sbp_management_agent {int dummy; } ;


 int SBP_STATUS_REQ_TYPE_NOTSUPP ;
 int STATUS_BLOCK_RESP (int ) ;
 int STATUS_BLOCK_SBP_STATUS (int ) ;
 int STATUS_RESP_REQUEST_COMPLETE ;
 int cpu_to_be32 (int) ;
 int pr_notice (char*) ;

__attribute__((used)) static void sbp_management_request_query_logins(
 struct sbp_management_agent *agent, struct sbp_management_request *req,
 int *status_data_size)
{
 pr_notice("QUERY LOGINS not implemented\n");


 req->status.status = cpu_to_be32(
  STATUS_BLOCK_RESP(STATUS_RESP_REQUEST_COMPLETE) |
  STATUS_BLOCK_SBP_STATUS(SBP_STATUS_REQ_TYPE_NOTSUPP));
}
