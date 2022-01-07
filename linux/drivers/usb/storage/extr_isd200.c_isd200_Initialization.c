
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 scalar_t__ ISD200_ERROR ;
 scalar_t__ ISD200_GOOD ;
 scalar_t__ isd200_get_inquiry_data (struct us_data*) ;
 scalar_t__ isd200_init_info (struct us_data*) ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static int isd200_Initialization(struct us_data *us)
{
 usb_stor_dbg(us, "ISD200 Initialization...\n");



 if (isd200_init_info(us) == ISD200_ERROR) {
  usb_stor_dbg(us, "ERROR Initializing ISD200 Info struct\n");
 } else {


  if (isd200_get_inquiry_data(us) != ISD200_GOOD)
   usb_stor_dbg(us, "ISD200 Initialization Failure\n");
  else
   usb_stor_dbg(us, "ISD200 Initialization complete\n");
 }

 return 0;
}
