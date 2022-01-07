
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct TYPE_2__ {int len; } ;
struct qlink_resp {scalar_t__ macid; scalar_t__ vifid; TYPE_1__ mhdr; int cmd_id; } ;


 int EINVAL ;
 int ENOSPC ;
 size_t le16_to_cpu (int ) ;
 int pr_warn (char*,scalar_t__,scalar_t__,size_t,size_t,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qtnf_cmd_check_reply_header(const struct qlink_resp *resp,
           u16 cmd_id, u8 mac_id, u8 vif_id,
           size_t resp_size)
{
 if (unlikely(le16_to_cpu(resp->cmd_id) != cmd_id)) {
  pr_warn("VIF%u.%u CMD%x: bad cmd_id in response: 0x%.4X\n",
   mac_id, vif_id, cmd_id, le16_to_cpu(resp->cmd_id));
  return -EINVAL;
 }

 if (unlikely(resp->macid != mac_id)) {
  pr_warn("VIF%u.%u CMD%x: bad MAC in response: %u\n",
   mac_id, vif_id, cmd_id, resp->macid);
  return -EINVAL;
 }

 if (unlikely(resp->vifid != vif_id)) {
  pr_warn("VIF%u.%u CMD%x: bad VIF in response: %u\n",
   mac_id, vif_id, cmd_id, resp->vifid);
  return -EINVAL;
 }

 if (unlikely(le16_to_cpu(resp->mhdr.len) < resp_size)) {
  pr_warn("VIF%u.%u CMD%x: bad response size %u < %zu\n",
   mac_id, vif_id, cmd_id,
   le16_to_cpu(resp->mhdr.len), resp_size);
  return -ENOSPC;
 }

 return 0;
}
