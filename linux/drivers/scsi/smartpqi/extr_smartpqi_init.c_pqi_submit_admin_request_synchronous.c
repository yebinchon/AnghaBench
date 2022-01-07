
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_general_admin_response {int dummy; } ;
struct pqi_general_admin_request {int function_code; } ;
struct pqi_ctrl_info {int dummy; } ;


 int pqi_poll_for_admin_response (struct pqi_ctrl_info*,struct pqi_general_admin_response*) ;
 int pqi_submit_admin_request (struct pqi_ctrl_info*,struct pqi_general_admin_request*) ;
 int pqi_validate_admin_response (struct pqi_general_admin_response*,int ) ;

__attribute__((used)) static int pqi_submit_admin_request_synchronous(
 struct pqi_ctrl_info *ctrl_info,
 struct pqi_general_admin_request *request,
 struct pqi_general_admin_response *response)
{
 int rc;

 pqi_submit_admin_request(ctrl_info, request);

 rc = pqi_poll_for_admin_response(ctrl_info, response);

 if (rc == 0)
  rc = pqi_validate_admin_response(response,
   request->function_code);

 return rc;
}
