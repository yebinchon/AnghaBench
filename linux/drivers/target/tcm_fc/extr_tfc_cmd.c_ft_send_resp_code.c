
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ft_cmd {int req_frame; TYPE_2__* sess; } ;
typedef enum fcp_resp_rsp_codes { ____Placeholder_fcp_resp_rsp_codes } fcp_resp_rsp_codes ;
struct TYPE_4__ {TYPE_1__* tport; } ;
struct TYPE_3__ {int lport; } ;


 int SAM_STAT_GOOD ;
 int ft_send_resp_status (int ,int ,int ,int) ;

__attribute__((used)) static void ft_send_resp_code(struct ft_cmd *cmd,
         enum fcp_resp_rsp_codes code)
{
 ft_send_resp_status(cmd->sess->tport->lport,
       cmd->req_frame, SAM_STAT_GOOD, code);
}
