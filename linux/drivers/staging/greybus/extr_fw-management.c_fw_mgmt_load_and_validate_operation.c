
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct gb_fw_mgmt_load_and_validate_fw_request {char* firmware_tag; int request_id; scalar_t__ load_method; } ;
struct fw_mgmt {int intf_fw_request_id; int intf_fw_loaded; int parent; int id_map; int connection; } ;
typedef int request ;


 int EINVAL ;
 int GB_FIRMWARE_TAG_MAX_SIZE ;
 scalar_t__ GB_FW_LOAD_METHOD_INTERNAL ;
 scalar_t__ GB_FW_LOAD_METHOD_UNIPRO ;
 int GB_FW_MGMT_TYPE_LOAD_AND_VALIDATE_FW ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,...) ;
 int gb_operation_sync (int ,int ,struct gb_fw_mgmt_load_and_validate_fw_request*,int,int *,int ) ;
 int ida_simple_get (int *,int,int,int ) ;
 int ida_simple_remove (int *,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int fw_mgmt_load_and_validate_operation(struct fw_mgmt *fw_mgmt,
            u8 load_method, const char *tag)
{
 struct gb_fw_mgmt_load_and_validate_fw_request request;
 int ret;

 if (load_method != GB_FW_LOAD_METHOD_UNIPRO &&
     load_method != GB_FW_LOAD_METHOD_INTERNAL) {
  dev_err(fw_mgmt->parent,
   "invalid load-method (%d)\n", load_method);
  return -EINVAL;
 }

 request.load_method = load_method;
 strncpy(request.firmware_tag, tag, GB_FIRMWARE_TAG_MAX_SIZE);





 if (request.firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE - 1] != '\0') {
  dev_err(fw_mgmt->parent, "load-and-validate: firmware-tag is not NULL terminated\n");
  return -EINVAL;
 }


 ret = ida_simple_get(&fw_mgmt->id_map, 1, 256, GFP_KERNEL);
 if (ret < 0) {
  dev_err(fw_mgmt->parent, "failed to allocate request id (%d)\n",
   ret);
  return ret;
 }

 fw_mgmt->intf_fw_request_id = ret;
 fw_mgmt->intf_fw_loaded = 0;
 request.request_id = ret;

 ret = gb_operation_sync(fw_mgmt->connection,
    GB_FW_MGMT_TYPE_LOAD_AND_VALIDATE_FW, &request,
    sizeof(request), ((void*)0), 0);
 if (ret) {
  ida_simple_remove(&fw_mgmt->id_map,
      fw_mgmt->intf_fw_request_id);
  fw_mgmt->intf_fw_request_id = 0;
  dev_err(fw_mgmt->parent,
   "load and validate firmware request failed (%d)\n",
   ret);
  return ret;
 }

 return 0;
}
