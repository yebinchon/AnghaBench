
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_flash_info {int protect_block_size; int erase_block_size; int write_block_size; int flash_size; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cros_ec_dev {int ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int insize; scalar_t__ data; scalar_t__ outsize; scalar_t__ command; scalar_t__ version; } ;
typedef int ssize_t ;


 scalar_t__ EC_CMD_FLASH_INFO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kmalloc (int,int ) ;
 int scnprintf (char*,int ,char*,int ,int ,int ,int ) ;
 struct cros_ec_dev* to_cros_ec_dev (struct device*) ;

__attribute__((used)) static ssize_t flashinfo_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ec_response_flash_info *resp;
 struct cros_ec_command *msg;
 int ret;
 struct cros_ec_dev *ec = to_cros_ec_dev(dev);

 msg = kmalloc(sizeof(*msg) + sizeof(*resp), GFP_KERNEL);
 if (!msg)
  return -ENOMEM;


 msg->version = 0;
 msg->command = EC_CMD_FLASH_INFO + ec->cmd_offset;
 msg->insize = sizeof(*resp);
 msg->outsize = 0;
 ret = cros_ec_cmd_xfer_status(ec->ec_dev, msg);
 if (ret < 0)
  goto exit;

 resp = (struct ec_response_flash_info *)msg->data;

 ret = scnprintf(buf, PAGE_SIZE,
   "FlashSize %d\nWriteSize %d\n"
   "EraseSize %d\nProtectSize %d\n",
   resp->flash_size, resp->write_block_size,
   resp->erase_block_size, resp->protect_block_size);
exit:
 kfree(msg);
 return ret;
}
