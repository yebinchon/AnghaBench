
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_msg {int param2; void* param1; void* cmd; } ;
struct glink_channel {int rcid; } ;
typedef int msg ;


 int RPM_CMD_OPEN_ACK ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int qcom_glink_tx (struct qcom_glink*,struct glink_msg*,int,int *,int ,int) ;

__attribute__((used)) static void qcom_glink_send_open_ack(struct qcom_glink *glink,
         struct glink_channel *channel)
{
 struct glink_msg msg;

 msg.cmd = cpu_to_le16(RPM_CMD_OPEN_ACK);
 msg.param1 = cpu_to_le16(channel->rcid);
 msg.param2 = cpu_to_le32(0);

 qcom_glink_tx(glink, &msg, sizeof(msg), ((void*)0), 0, 1);
}
