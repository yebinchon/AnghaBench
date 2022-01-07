
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
 int gb_bootrom_firmware_size_request (struct gb_operation*) ;
 int gb_bootrom_get_firmware (struct gb_operation*) ;
 int gb_bootrom_ready_to_boot (struct gb_operation*) ;

__attribute__((used)) static int gb_bootrom_request_handler(struct gb_operation *op)
{
 u8 type = op->type;

 switch (type) {
 case 130:
  return gb_bootrom_firmware_size_request(op);
 case 129:
  return gb_bootrom_get_firmware(op);
 case 128:
  return gb_bootrom_ready_to_boot(op);
 default:
  dev_err(&op->connection->bundle->dev,
   "unsupported request: %u\n", type);
  return -EINVAL;
 }
}
