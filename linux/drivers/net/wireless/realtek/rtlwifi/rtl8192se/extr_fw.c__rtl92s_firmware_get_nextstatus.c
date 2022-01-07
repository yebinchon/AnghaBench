
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fw_status { ____Placeholder_fw_status } fw_status ;






 int FW_STATUS_READY ;

__attribute__((used)) static enum fw_status _rtl92s_firmware_get_nextstatus(
  enum fw_status fw_currentstatus)
{
 enum fw_status next_fwstatus = 0;

 switch (fw_currentstatus) {
 case 131:
  next_fwstatus = 128;
  break;
 case 128:
  next_fwstatus = 129;
  break;
 case 129:
  next_fwstatus = 130;
  break;
 case 130:
  next_fwstatus = FW_STATUS_READY;
  break;
 default:
  break;
 }

 return next_fwstatus;
}
