
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st95hf_context {TYPE_1__* nfcdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CMD_ISO14443B_DEMOGAIN ;
 int dev_err (struct device*,char*,int) ;
 int st95hf_send_recv_cmd (struct st95hf_context*,int ,int ,int *,int) ;

__attribute__((used)) static int secondary_configuration_type4b(struct st95hf_context *stcontext)
{
 int result = 0;
 struct device *dev = &stcontext->nfcdev->dev;

 result = st95hf_send_recv_cmd(stcontext,
          CMD_ISO14443B_DEMOGAIN,
          0,
          ((void*)0),
          1);
 if (result)
  dev_err(dev, "type b demogain cmd, err = 0x%x\n", result);

 return result;
}
