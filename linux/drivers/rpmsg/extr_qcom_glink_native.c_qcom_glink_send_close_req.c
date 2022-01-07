
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_msg {scalar_t__ param2; void* param1; void* cmd; } ;
struct glink_channel {int lcid; } ;
typedef int req ;


 int RPM_CMD_CLOSE ;
 void* cpu_to_le16 (int ) ;
 int qcom_glink_tx (struct qcom_glink*,struct glink_msg*,int,int *,int ,int) ;

__attribute__((used)) static void qcom_glink_send_close_req(struct qcom_glink *glink,
          struct glink_channel *channel)
{
 struct glink_msg req;

 req.cmd = cpu_to_le16(RPM_CMD_CLOSE);
 req.param1 = cpu_to_le16(channel->lcid);
 req.param2 = 0;

 qcom_glink_tx(glink, &req, sizeof(req), ((void*)0), 0, 1);
}
