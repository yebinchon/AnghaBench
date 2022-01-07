
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st95hf_context {int current_rf_tech; int sendrcv_trflag; TYPE_1__* nfcdev; } ;
struct sk_buff {int* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EIO ;
 int ETIMEDOUT ;



 int ST95HF_ERR_MASK ;
 unsigned char ST95HF_NFCA_CRC_ERR_MASK ;
 unsigned char ST95HF_NFCB_CRC_ERR_MASK ;
 int ST95HF_TIMEOUT_ERROR ;
 int TRFLAG_NFCA_STD_FRAME_CRC ;
 int dev_err (struct device*,char*,unsigned char) ;

__attribute__((used)) static int st95hf_error_handling(struct st95hf_context *stcontext,
     struct sk_buff *skb_resp,
     int res_len)
{
 int result = 0;
 unsigned char error_byte;
 struct device *dev = &stcontext->nfcdev->dev;


 if (skb_resp->data[0] & ST95HF_ERR_MASK) {
  if (skb_resp->data[0] == ST95HF_TIMEOUT_ERROR)
   result = -ETIMEDOUT;
  else
   result = -EIO;
  return result;
 }


 switch (stcontext->current_rf_tech) {
 case 130:
  if (stcontext->sendrcv_trflag == TRFLAG_NFCA_STD_FRAME_CRC) {
   error_byte = skb_resp->data[res_len - 3];
   if (error_byte & ST95HF_NFCA_CRC_ERR_MASK) {

    dev_err(dev, "CRC error, byte received = 0x%x\n",
     error_byte);
    result = -EIO;
   }
  }
  break;
 case 129:
 case 128:
  error_byte = skb_resp->data[res_len - 1];
  if (error_byte & ST95HF_NFCB_CRC_ERR_MASK) {

   dev_err(dev, "CRC error, byte received = 0x%x\n",
    error_byte);
   result = -EIO;
  }
  break;
 }

 return result;
}
