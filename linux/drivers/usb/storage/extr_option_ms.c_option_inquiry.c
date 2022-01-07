
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_bulk_pipe; int send_bulk_pipe; } ;
typedef int inquiry_msg ;


 int GFP_KERNEL ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_XFER_ERROR ;
 int USB_STOR_XFER_GOOD ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,unsigned char const*,int) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,char*,int,int *) ;
 int usb_stor_dbg (struct us_data*,char*,char*) ;

__attribute__((used)) static int option_inquiry(struct us_data *us)
{
 static const unsigned char inquiry_msg[] = {
   0x55, 0x53, 0x42, 0x43, 0x12, 0x34, 0x56, 0x78,
   0x24, 0x00, 0x00, 0x00, 0x80, 0x00, 0x06, 0x12,
   0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };
 char *buffer;
 int result;

 usb_stor_dbg(us, "Option MS: %s\n", "device inquiry for vendor name");

 buffer = kzalloc(0x24, GFP_KERNEL);
 if (buffer == ((void*)0))
  return USB_STOR_TRANSPORT_ERROR;

 memcpy(buffer, inquiry_msg, sizeof(inquiry_msg));
 result = usb_stor_bulk_transfer_buf(us,
   us->send_bulk_pipe,
   buffer, sizeof(inquiry_msg), ((void*)0));
 if (result != USB_STOR_XFER_GOOD) {
  result = USB_STOR_XFER_ERROR;
  goto out;
 }

 result = usb_stor_bulk_transfer_buf(us,
   us->recv_bulk_pipe,
   buffer, 0x24, ((void*)0));
 if (result != USB_STOR_XFER_GOOD) {
  result = USB_STOR_XFER_ERROR;
  goto out;
 }

 result = memcmp(buffer+8, "Option", 6);

 if (result != 0)
  result = memcmp(buffer+8, "ZCOPTION", 8);


 usb_stor_bulk_transfer_buf(us,
   us->recv_bulk_pipe,
   buffer, 13, ((void*)0));

out:
 kfree(buffer);
 return result;
}
