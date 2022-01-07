
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct s3fwrn5_fw_info {int dummy; } ;
struct s3fwrn5_fw_header {scalar_t__ code; } ;
struct s3fwrn5_fw_cmd_get_bootinfo_rsp {int dummy; } ;


 int EINVAL ;
 int S3FWRN5_FW_CMD_GET_BOOTINFO ;
 scalar_t__ S3FWRN5_FW_HDR_SIZE ;
 int S3FWRN5_FW_MSG_CMD ;
 scalar_t__ S3FWRN5_FW_RET_SUCCESS ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct s3fwrn5_fw_cmd_get_bootinfo_rsp*,scalar_t__,int) ;
 int s3fwrn5_fw_prep_msg (struct s3fwrn5_fw_info*,struct sk_buff**,int ,int ,int *,int ) ;
 int s3fwrn5_fw_send_msg (struct s3fwrn5_fw_info*,struct sk_buff*,struct sk_buff**) ;

__attribute__((used)) static int s3fwrn5_fw_get_bootinfo(struct s3fwrn5_fw_info *fw_info,
 struct s3fwrn5_fw_cmd_get_bootinfo_rsp *bootinfo)
{
 struct sk_buff *msg, *rsp = ((void*)0);
 struct s3fwrn5_fw_header *hdr;
 int ret;



 ret = s3fwrn5_fw_prep_msg(fw_info, &msg, S3FWRN5_FW_MSG_CMD,
  S3FWRN5_FW_CMD_GET_BOOTINFO, ((void*)0), 0);
 if (ret < 0)
  return ret;

 ret = s3fwrn5_fw_send_msg(fw_info, msg, &rsp);
 kfree_skb(msg);
 if (ret < 0)
  return ret;

 hdr = (struct s3fwrn5_fw_header *) rsp->data;
 if (hdr->code != S3FWRN5_FW_RET_SUCCESS) {
  ret = -EINVAL;
  goto out;
 }

 memcpy(bootinfo, rsp->data + S3FWRN5_FW_HDR_SIZE, 10);

out:
 kfree_skb(rsp);
 return ret;
}
