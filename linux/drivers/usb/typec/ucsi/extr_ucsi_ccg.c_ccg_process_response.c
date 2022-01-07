
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct ucsi_ccg {int cmd_resp; TYPE_1__ dev_resp; int flags; struct device* dev; } ;
struct device {int dummy; } ;


 int ASYNC_EVENT ;
 int DEV_CMD_PENDING ;
 int RESET_COMPLETE ;
 int RESET_PENDING ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*,int) ;
 int get_fw_info (struct ucsi_ccg*) ;
 scalar_t__ invalid_async_evt (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ccg_process_response(struct ucsi_ccg *uc)
{
 struct device *dev = uc->dev;

 if (uc->dev_resp.code & ASYNC_EVENT) {
  if (uc->dev_resp.code == RESET_COMPLETE) {
   if (test_bit(RESET_PENDING, &uc->flags))
    uc->cmd_resp = uc->dev_resp.code;
   get_fw_info(uc);
  }
  if (invalid_async_evt(uc->dev_resp.code))
   dev_err(dev, "invalid async evt %d\n",
    uc->dev_resp.code);
 } else {
  if (test_bit(DEV_CMD_PENDING, &uc->flags)) {
   uc->cmd_resp = uc->dev_resp.code;
   clear_bit(DEV_CMD_PENDING, &uc->flags);
  } else {
   dev_err(dev, "dev resp 0x%04x but no cmd pending\n",
    uc->dev_resp.code);
  }
 }
}
