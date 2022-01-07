
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int ACTION_REENABLE ;
 int ACTION_RESET ;
 int ISD200_ERROR ;
 int ISD200_GOOD ;
 int ISD200_TRANSPORT_GOOD ;
 int isd200_action (struct us_data*,int ,int *,int ) ;
 int msleep (int) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int isd200_srst( struct us_data *us )
{
 int retStatus = ISD200_GOOD;
 int transferStatus;

 usb_stor_dbg(us, "Entering isd200_SRST\n");

 transferStatus = isd200_action( us, ACTION_RESET, ((void*)0), 0 );


 if (transferStatus != ISD200_TRANSPORT_GOOD) {
  usb_stor_dbg(us, "   Error issuing SRST\n");
  retStatus = ISD200_ERROR;
 } else {

  msleep(10);

  transferStatus = isd200_action( us, ACTION_REENABLE, ((void*)0), 0 );
  if (transferStatus != ISD200_TRANSPORT_GOOD) {
   usb_stor_dbg(us, "   Error taking drive out of reset\n");
   retStatus = ISD200_ERROR;
  } else {

   msleep(50);
  }
 }

 usb_stor_dbg(us, "Leaving isd200_srst %08X\n", retStatus);
 return retStatus;
}
