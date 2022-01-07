
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* firmware_tag; int major; int minor; int status; } ;


 int FW_MGMT_IOC_GET_BACKEND_FW ;
 int FW_MGMT_IOC_INTF_BACKEND_FW_UPDATE ;
 int GB_FIRMWARE_U_TAG_MAX_SIZE ;
 int GB_FW_U_BACKEND_FW_STATUS_RETRY ;
 int GB_FW_U_BACKEND_FW_STATUS_SUCCESS ;
 int GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE ;
 int GB_FW_U_BACKEND_VERSION_STATUS_RETRY ;
 int GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS ;
 TYPE_1__ backend_fw_info ;
 TYPE_1__ backend_update ;
 char* firmware_tag ;
 char* fwdev ;
 int ioctl (int,int ,TYPE_1__*) ;
 int printf (char*,...) ;
 int strncpy (char*,char*,int ) ;

__attribute__((used)) static int update_backend_firmware(int fd)
{
 int ret;


 printf("Getting Backend Firmware Version\n");

 strncpy((char *)&backend_fw_info.firmware_tag, firmware_tag,
  GB_FIRMWARE_U_TAG_MAX_SIZE);

retry_fw_version:
 ret = ioctl(fd, FW_MGMT_IOC_GET_BACKEND_FW, &backend_fw_info);
 if (ret < 0) {
  printf("Failed to get backend firmware version: %s (%d)\n",
   fwdev, ret);
  return -1;
 }

 printf("Backend Firmware tag (%s), major (%d), minor (%d), status (%d)\n",
  backend_fw_info.firmware_tag, backend_fw_info.major,
  backend_fw_info.minor, backend_fw_info.status);

 if (backend_fw_info.status == GB_FW_U_BACKEND_VERSION_STATUS_RETRY)
  goto retry_fw_version;

 if ((backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS)
     && (backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE)) {
  printf("Failed to get backend firmware version: %s (%d)\n",
   fwdev, backend_fw_info.status);
  return -1;
 }


 printf("Updating Backend Firmware\n");

 strncpy((char *)&backend_update.firmware_tag, firmware_tag,
  GB_FIRMWARE_U_TAG_MAX_SIZE);

retry_fw_update:
 backend_update.status = 0;

 ret = ioctl(fd, FW_MGMT_IOC_INTF_BACKEND_FW_UPDATE, &backend_update);
 if (ret < 0) {
  printf("Failed to load backend firmware: %s (%d)\n", fwdev, ret);
  return -1;
 }

 if (backend_update.status == GB_FW_U_BACKEND_FW_STATUS_RETRY) {
  printf("Retrying firmware update: %d\n", backend_update.status);
  goto retry_fw_update;
 }

 if (backend_update.status != GB_FW_U_BACKEND_FW_STATUS_SUCCESS) {
  printf("Load status says loading failed: %d\n",
   backend_update.status);
 } else {
  printf("Backend Firmware (%s) Load done: status: %d\n",
    firmware_tag, backend_update.status);
 }

 return 0;
}
