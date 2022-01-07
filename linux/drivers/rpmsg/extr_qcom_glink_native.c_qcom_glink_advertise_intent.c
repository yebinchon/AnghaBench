
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_core_rx_intent {int size; int id; } ;
struct glink_channel {int lcid; } ;
typedef int cmd ;
typedef void* __le32 ;
typedef void* __le16 ;


 int RPM_CMD_INTENT ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int qcom_glink_tx (struct qcom_glink*,struct command*,int,int *,int ,int) ;

__attribute__((used)) static int qcom_glink_advertise_intent(struct qcom_glink *glink,
           struct glink_channel *channel,
           struct glink_core_rx_intent *intent)
{
 struct command {
  __le16 id;
  __le16 lcid;
  __le32 count;
  __le32 size;
  __le32 liid;
 } __packed;
 struct command cmd;

 cmd.id = cpu_to_le16(RPM_CMD_INTENT);
 cmd.lcid = cpu_to_le16(channel->lcid);
 cmd.count = cpu_to_le32(1);
 cmd.size = cpu_to_le32(intent->size);
 cmd.liid = cpu_to_le32(intent->id);

 qcom_glink_tx(glink, &cmd, sizeof(cmd), ((void*)0), 0, 1);

 return 0;
}
