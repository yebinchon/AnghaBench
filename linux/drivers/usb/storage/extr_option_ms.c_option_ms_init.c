
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int EIO ;
 int USB_STOR_XFER_GOOD ;
 scalar_t__ ZCD_ALLOW_MS ;
 scalar_t__ ZCD_FORCE_MODEM ;
 int option_inquiry (struct us_data*) ;
 int option_rezero (struct us_data*) ;
 scalar_t__ option_zero_cd ;
 int usb_stor_dbg (struct us_data*,char*,char*) ;

int option_ms_init(struct us_data *us)
{
 int result;

 usb_stor_dbg(us, "Option MS: %s\n", "option_ms_init called");





 result = option_inquiry(us);
 if (result != 0) {
  usb_stor_dbg(us, "Option MS: %s\n",
        "vendor is not Option or not determinable, no action taken");
  return 0;
 } else
  usb_stor_dbg(us, "Option MS: %s\n",
        "this is a genuine Option device, proceeding");


 if (option_zero_cd == ZCD_FORCE_MODEM) {
  usb_stor_dbg(us, "Option MS: %s\n", "Forcing Modem Mode");
  result = option_rezero(us);
  if (result != USB_STOR_XFER_GOOD)
   usb_stor_dbg(us, "Option MS: %s\n",
         "Failed to switch to modem mode");
  return -EIO;
 } else if (option_zero_cd == ZCD_ALLOW_MS) {

  usb_stor_dbg(us, "Option MS: %s\n",
        "Allowing Mass Storage Mode if device requests it");
 }

 return 0;
}
