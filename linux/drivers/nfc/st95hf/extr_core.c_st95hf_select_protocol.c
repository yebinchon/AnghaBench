
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st95hf_context {int current_rf_tech; TYPE_1__* nfcdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CMD_ISO14443A_PROTOCOL_SELECT ;
 int CMD_ISO14443B_PROTOCOL_SELECT ;
 int CMD_ISO15693_PROTOCOL_SELECT ;
 int EINVAL ;



 int dev_err (struct device*,char*,int) ;
 int secondary_configuration_type4a (struct st95hf_context*) ;
 int secondary_configuration_type4b (struct st95hf_context*) ;
 int st95hf_send_recv_cmd (struct st95hf_context*,int ,int ,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st95hf_select_protocol(struct st95hf_context *stcontext, int type)
{
 int result = 0;
 struct device *dev;

 dev = &stcontext->nfcdev->dev;

 switch (type) {
 case 130:
  stcontext->current_rf_tech = 130;
  result = st95hf_send_recv_cmd(stcontext,
           CMD_ISO14443A_PROTOCOL_SELECT,
           0,
           ((void*)0),
           1);
  if (result) {
   dev_err(dev, "protocol sel, err = 0x%x\n",
    result);
   return result;
  }


  result = secondary_configuration_type4a(stcontext);
  if (result) {
   dev_err(dev, "type a secondary config, err = 0x%x\n",
    result);
   return result;
  }
  break;
 case 129:
  stcontext->current_rf_tech = 129;
  result = st95hf_send_recv_cmd(stcontext,
           CMD_ISO14443B_PROTOCOL_SELECT,
           0,
           ((void*)0),
           1);
  if (result) {
   dev_err(dev, "protocol sel send, err = 0x%x\n",
    result);
   return result;
  }





  usleep_range(50000, 60000);


  result = secondary_configuration_type4b(stcontext);
  if (result) {
   dev_err(dev, "type b secondary config, err = 0x%x\n",
    result);
   return result;
  }
  break;
 case 128:
  stcontext->current_rf_tech = 128;
  result = st95hf_send_recv_cmd(stcontext,
           CMD_ISO15693_PROTOCOL_SELECT,
           0,
           ((void*)0),
           1);
  if (result) {
   dev_err(dev, "protocol sel send, err = 0x%x\n",
    result);
   return result;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
