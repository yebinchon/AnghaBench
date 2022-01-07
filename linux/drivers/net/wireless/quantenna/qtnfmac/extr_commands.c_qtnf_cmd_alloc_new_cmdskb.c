
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_2__ {void* type; void* len; } ;
struct qlink_cmd {void* vifid; void* macid; void* cmd_id; TYPE_1__ mhdr; } ;


 int GFP_KERNEL ;
 int QLINK_MSG_TYPE_CMD ;
 scalar_t__ QTNF_MAX_CMD_BUF_SIZE ;
 struct sk_buff* __dev_alloc_skb (scalar_t__,int ) ;
 void* cpu_to_le16 (int ) ;
 int pr_err (char*,void*,void*,int ) ;
 int skb_put_zero (struct sk_buff*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *qtnf_cmd_alloc_new_cmdskb(u8 macid, u8 vifid, u16 cmd_no,
       size_t cmd_size)
{
 struct qlink_cmd *cmd;
 struct sk_buff *cmd_skb;

 cmd_skb = __dev_alloc_skb(sizeof(*cmd) +
      QTNF_MAX_CMD_BUF_SIZE, GFP_KERNEL);
 if (unlikely(!cmd_skb)) {
  pr_err("VIF%u.%u CMD %u: alloc failed\n", macid, vifid, cmd_no);
  return ((void*)0);
 }

 skb_put_zero(cmd_skb, cmd_size);

 cmd = (struct qlink_cmd *)cmd_skb->data;
 cmd->mhdr.len = cpu_to_le16(cmd_skb->len);
 cmd->mhdr.type = cpu_to_le16(QLINK_MSG_TYPE_CMD);
 cmd->cmd_id = cpu_to_le16(cmd_no);
 cmd->macid = macid;
 cmd->vifid = vifid;

 return cmd_skb;
}
