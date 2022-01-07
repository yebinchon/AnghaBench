
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_fw_mgmt_interface_fw_version_response {int firmware_tag; int minor; int major; } ;
struct gb_connection {int dummy; } ;
struct fw_mgmt_ioc_get_intf_version {char* firmware_tag; void* minor; void* major; } ;
struct fw_mgmt {int parent; struct gb_connection* connection; } ;
typedef int response ;


 int GB_FIRMWARE_TAG_MAX_SIZE ;
 int GB_FW_MGMT_TYPE_INTERFACE_FW_VERSION ;
 int dev_err (int ,char*,...) ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,struct gb_fw_mgmt_interface_fw_version_response*,int) ;
 void* le16_to_cpu (int ) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int fw_mgmt_interface_fw_version_operation(struct fw_mgmt *fw_mgmt,
  struct fw_mgmt_ioc_get_intf_version *fw_info)
{
 struct gb_connection *connection = fw_mgmt->connection;
 struct gb_fw_mgmt_interface_fw_version_response response;
 int ret;

 ret = gb_operation_sync(connection,
    GB_FW_MGMT_TYPE_INTERFACE_FW_VERSION, ((void*)0), 0,
    &response, sizeof(response));
 if (ret) {
  dev_err(fw_mgmt->parent,
   "failed to get interface firmware version (%d)\n", ret);
  return ret;
 }

 fw_info->major = le16_to_cpu(response.major);
 fw_info->minor = le16_to_cpu(response.minor);

 strncpy(fw_info->firmware_tag, response.firmware_tag,
  GB_FIRMWARE_TAG_MAX_SIZE);





 if (fw_info->firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE - 1] != '\0') {
  dev_err(fw_mgmt->parent,
   "fw-version: firmware-tag is not NULL terminated\n");
  fw_info->firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE - 1] = '\0';
 }

 return 0;
}
