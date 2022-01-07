
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
 int fw_mgmt_backend_fw_updated_operation (struct gb_operation*) ;
 int fw_mgmt_interface_fw_loaded_operation (struct gb_operation*) ;

int gb_fw_mgmt_request_handler(struct gb_operation *op)
{
 u8 type = op->type;

 switch (type) {
 case 128:
  return fw_mgmt_interface_fw_loaded_operation(op);
 case 129:
  return fw_mgmt_backend_fw_updated_operation(op);
 default:
  dev_err(&op->connection->bundle->dev,
   "unsupported request: %u\n", type);
  return -EINVAL;
 }
}
