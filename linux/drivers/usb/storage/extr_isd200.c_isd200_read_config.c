
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_ctrl_pipe; scalar_t__ extra; } ;
struct isd200_info {int ConfigData; } ;


 int ISD200_ERROR ;
 int ISD200_GOOD ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int isd200_log_config (struct us_data*,struct isd200_info*) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int,int,int,int,void*,int) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int isd200_read_config( struct us_data *us )
{
 struct isd200_info *info = (struct isd200_info *)us->extra;
 int retStatus = ISD200_GOOD;
 int result;

 usb_stor_dbg(us, "Entering isd200_read_config\n");




 result = usb_stor_ctrl_transfer(
  us,
  us->recv_ctrl_pipe,
  0x02,
  USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
  0x0000,
  0x0002,
  (void *) &info->ConfigData,
  sizeof(info->ConfigData));


 if (result >= 0) {
  usb_stor_dbg(us, "   Retrieved the following ISD200 Config Data:\n");



 } else {
  usb_stor_dbg(us, "   Request to get ISD200 Config Data failed!\n");
  retStatus = ISD200_ERROR;
 }

 usb_stor_dbg(us, "Leaving isd200_read_config %08X\n", retStatus);
 return retStatus;
}
