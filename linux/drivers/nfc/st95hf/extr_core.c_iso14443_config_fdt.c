
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* spidev; } ;
struct st95hf_context {int fwi; struct nfc_digital_dev* ddev; TYPE_2__ spicontext; } ;
struct param_list {int param_offset; int new_param_val; } ;
struct nfc_digital_dev {int curr_protocol; } ;
struct device {int dummy; } ;
struct TYPE_6__ {unsigned char* cmd_params; } ;
struct TYPE_4__ {struct device dev; } ;


 size_t CMD_ISO14443A_PROTOCOL_SELECT ;
 size_t CMD_ISO14443B_PROTOCOL_SELECT ;
 int EINVAL ;


 TYPE_3__* cmd_array ;
 int dev_err (struct device*,char*,int) ;
 int secondary_configuration_type4a (struct st95hf_context*) ;
 int secondary_configuration_type4b (struct st95hf_context*) ;
 int st95hf_send_recv_cmd (struct st95hf_context*,size_t,int,struct param_list*,int) ;

__attribute__((used)) static int iso14443_config_fdt(struct st95hf_context *st95context, int wtxm)
{
 int result = 0;
 struct device *dev = &st95context->spicontext.spidev->dev;
 struct nfc_digital_dev *nfcddev = st95context->ddev;
 unsigned char pp_typeb;
 struct param_list new_params[2];

 pp_typeb = cmd_array[CMD_ISO14443B_PROTOCOL_SELECT].cmd_params[2];

 if (nfcddev->curr_protocol == 129 &&
     st95context->fwi < 4)
  st95context->fwi = 4;

 new_params[0].param_offset = 2;
 if (nfcddev->curr_protocol == 129)
  new_params[0].new_param_val = st95context->fwi;
 else if (nfcddev->curr_protocol == 128)
  new_params[0].new_param_val = pp_typeb;

 new_params[1].param_offset = 3;
 new_params[1].new_param_val = wtxm;

 switch (nfcddev->curr_protocol) {
 case 129:
  result = st95hf_send_recv_cmd(st95context,
           CMD_ISO14443A_PROTOCOL_SELECT,
           2,
           new_params,
           1);
  if (result) {
   dev_err(dev, "WTX type a sel proto, err = 0x%x\n",
    result);
   return result;
  }


  result = secondary_configuration_type4a(st95context);
  if (result) {
   dev_err(dev, "WTX type a second. config, err = 0x%x\n",
    result);
   return result;
  }
  break;
 case 128:
  result = st95hf_send_recv_cmd(st95context,
           CMD_ISO14443B_PROTOCOL_SELECT,
           2,
           new_params,
           1);
  if (result) {
   dev_err(dev, "WTX type b sel proto, err = 0x%x\n",
    result);
   return result;
  }


  result = secondary_configuration_type4b(st95context);
  if (result) {
   dev_err(dev, "WTX type b second. config, err = 0x%x\n",
    result);
   return result;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
