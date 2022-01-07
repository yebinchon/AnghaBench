
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int features; } ;
struct glink_msg {int param2; void* param1; void* cmd; } ;
typedef int msg ;


 int GLINK_VERSION_1 ;
 int RPM_CMD_VERSION ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int qcom_glink_tx (struct qcom_glink*,struct glink_msg*,int,int *,int ,int) ;

__attribute__((used)) static int qcom_glink_send_version(struct qcom_glink *glink)
{
 struct glink_msg msg;

 msg.cmd = cpu_to_le16(RPM_CMD_VERSION);
 msg.param1 = cpu_to_le16(GLINK_VERSION_1);
 msg.param2 = cpu_to_le32(glink->features);

 return qcom_glink_tx(glink, &msg, sizeof(msg), ((void*)0), 0, 1);
}
