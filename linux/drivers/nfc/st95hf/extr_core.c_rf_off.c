
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st95hf_context {TYPE_1__* nfcdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CMD_FIELD_OFF ;
 int dev_err (struct device*,char*,int) ;
 int st95hf_send_recv_cmd (struct st95hf_context*,int ,int ,int *,int) ;

__attribute__((used)) static int rf_off(struct st95hf_context *stcontext)
{
 int rc;
 struct device *dev;

 dev = &stcontext->nfcdev->dev;

 rc = st95hf_send_recv_cmd(stcontext, CMD_FIELD_OFF, 0, ((void*)0), 1);
 if (rc)
  dev_err(dev, "protocol sel send field off, err = 0x%x\n", rc);

 return rc;
}
