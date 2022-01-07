
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_interface {int quirks; void* product_id; void* vendor_id; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bootrom_get_vid_pid_response {int product_id; int vendor_id; } ;
struct gb_bootrom {struct gb_connection* connection; } ;
typedef int response ;
struct TYPE_2__ {int dev; struct gb_interface* intf; } ;


 int GB_BOOTROM_TYPE_GET_VID_PID ;
 int GB_INTERFACE_QUIRK_NO_GMP_IDS ;
 int dev_dbg (int *,char*,void*,void*) ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,struct gb_bootrom_get_vid_pid_response*,int) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static void bootrom_es2_fixup_vid_pid(struct gb_bootrom *bootrom)
{
 struct gb_bootrom_get_vid_pid_response response;
 struct gb_connection *connection = bootrom->connection;
 struct gb_interface *intf = connection->bundle->intf;
 int ret;

 if (!(intf->quirks & GB_INTERFACE_QUIRK_NO_GMP_IDS))
  return;

 ret = gb_operation_sync(connection, GB_BOOTROM_TYPE_GET_VID_PID,
    ((void*)0), 0, &response, sizeof(response));
 if (ret) {
  dev_err(&connection->bundle->dev,
   "Bootrom get vid/pid operation failed (%d)\n", ret);
  return;
 }
 intf->vendor_id = le32_to_cpu(response.vendor_id);
 intf->product_id = le32_to_cpu(response.product_id);

 dev_dbg(&connection->bundle->dev, "Bootrom got vid (0x%x)/pid (0x%x)\n",
  intf->vendor_id, intf->product_id);
}
