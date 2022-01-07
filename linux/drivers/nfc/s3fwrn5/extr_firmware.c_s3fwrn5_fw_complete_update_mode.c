
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct s3fwrn5_fw_info {int dummy; } ;
struct s3fwrn5_fw_header {scalar_t__ code; } ;


 int EPROTO ;
 int S3FWRN5_FW_CMD_COMPLETE_UPDATE_MODE ;
 int S3FWRN5_FW_MSG_CMD ;
 scalar_t__ S3FWRN5_FW_RET_SUCCESS ;
 int kfree_skb (struct sk_buff*) ;
 int s3fwrn5_fw_prep_msg (struct s3fwrn5_fw_info*,struct sk_buff**,int ,int ,int *,int ) ;
 int s3fwrn5_fw_send_msg (struct s3fwrn5_fw_info*,struct sk_buff*,struct sk_buff**) ;

__attribute__((used)) static int s3fwrn5_fw_complete_update_mode(struct s3fwrn5_fw_info *fw_info)
{
 struct sk_buff *msg, *rsp = ((void*)0);
 struct s3fwrn5_fw_header *hdr;
 int ret;



 ret = s3fwrn5_fw_prep_msg(fw_info, &msg, S3FWRN5_FW_MSG_CMD,
  S3FWRN5_FW_CMD_COMPLETE_UPDATE_MODE, ((void*)0), 0);
 if (ret < 0)
  return ret;

 ret = s3fwrn5_fw_send_msg(fw_info, msg, &rsp);
 kfree_skb(msg);
 if (ret < 0)
  return ret;

 hdr = (struct s3fwrn5_fw_header *) rsp->data;
 if (hdr->code != S3FWRN5_FW_RET_SUCCESS)
  ret = -EPROTO;

 kfree_skb(rsp);

 return ret;
}
