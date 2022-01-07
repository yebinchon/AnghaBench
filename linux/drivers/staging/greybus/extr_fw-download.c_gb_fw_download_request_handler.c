
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct gb_operation {int type; TYPE_2__* connection; } ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;



 int dev_err (int *,char*,int) ;
 int fw_download_fetch_firmware (struct gb_operation*) ;
 int fw_download_find_firmware (struct gb_operation*) ;
 int fw_download_release_firmware (struct gb_operation*) ;

int gb_fw_download_request_handler(struct gb_operation *op)
{
 u8 type = op->type;

 switch (type) {
 case 129:
  return fw_download_find_firmware(op);
 case 130:
  return fw_download_fetch_firmware(op);
 case 128:
  return fw_download_release_firmware(op);
 default:
  dev_err(&op->connection->bundle->dev,
   "unsupported request: %u\n", type);
  return -EINVAL;
 }
}
