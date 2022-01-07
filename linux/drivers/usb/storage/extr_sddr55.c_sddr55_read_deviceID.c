
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int memset (unsigned char*,int ,int) ;
 int sddr55_bulk_transport (struct us_data*,int ,unsigned char*,int) ;
 int usb_stor_dbg (struct us_data*,char*,int) ;

__attribute__((used)) static int sddr55_read_deviceID(struct us_data *us,
  unsigned char *manufacturerID,
  unsigned char *deviceID) {

 int result;
 unsigned char *command = us->iobuf;
 unsigned char *content = us->iobuf;

 memset(command, 0, 8);
 command[5] = 0xB0;
 command[7] = 0x84;
 result = sddr55_bulk_transport(us, DMA_TO_DEVICE, command, 8);

 usb_stor_dbg(us, "Result of send_control for device ID is %d\n",
       result);

 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 result = sddr55_bulk_transport(us,
  DMA_FROM_DEVICE, content, 4);

 if (result != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 *manufacturerID = content[0];
 *deviceID = content[1];

 if (content[0] != 0xff) {
      result = sddr55_bulk_transport(us,
   DMA_FROM_DEVICE, content, 2);
 }

 return USB_STOR_TRANSPORT_GOOD;
}
