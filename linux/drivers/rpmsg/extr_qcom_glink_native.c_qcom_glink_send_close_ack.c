
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_msg {scalar_t__ param2; void* param1; void* cmd; } ;
typedef int req ;


 unsigned int RPM_CMD_CLOSE_ACK ;
 void* cpu_to_le16 (unsigned int) ;
 int qcom_glink_tx (struct qcom_glink*,struct glink_msg*,int,int *,int ,int) ;

__attribute__((used)) static void qcom_glink_send_close_ack(struct qcom_glink *glink,
          unsigned int rcid)
{
 struct glink_msg req;

 req.cmd = cpu_to_le16(RPM_CMD_CLOSE_ACK);
 req.param1 = cpu_to_le16(rcid);
 req.param2 = 0;

 qcom_glink_tx(glink, &req, sizeof(req), ((void*)0), 0, 1);
}
