
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; } ;
struct datafab_info {int lun; } ;


 int GFP_NOIO ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int datafab_bulk_read (struct us_data*,unsigned char*,int) ;
 int datafab_bulk_write (struct us_data*,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int msleep (int) ;
 int usb_stor_dbg (struct us_data*,char*) ;

__attribute__((used)) static int datafab_determine_lun(struct us_data *us,
     struct datafab_info *info)
{






 static unsigned char scommand[8] = { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
 unsigned char *command = us->iobuf;
 unsigned char *buf;
 int count = 0, rc;

 if (!info)
  return USB_STOR_TRANSPORT_ERROR;

 memcpy(command, scommand, 8);
 buf = kmalloc(512, GFP_NOIO);
 if (!buf)
  return USB_STOR_TRANSPORT_ERROR;

 usb_stor_dbg(us, "locating...\n");



 while (count++ < 3) {
  command[5] = 0xa0;

  rc = datafab_bulk_write(us, command, 8);
  if (rc != USB_STOR_XFER_GOOD) {
   rc = USB_STOR_TRANSPORT_ERROR;
   goto leave;
  }

  rc = datafab_bulk_read(us, buf, 512);
  if (rc == USB_STOR_XFER_GOOD) {
   info->lun = 0;
   rc = USB_STOR_TRANSPORT_GOOD;
   goto leave;
  }

  command[5] = 0xb0;

  rc = datafab_bulk_write(us, command, 8);
  if (rc != USB_STOR_XFER_GOOD) {
   rc = USB_STOR_TRANSPORT_ERROR;
   goto leave;
  }

  rc = datafab_bulk_read(us, buf, 512);
  if (rc == USB_STOR_XFER_GOOD) {
   info->lun = 1;
   rc = USB_STOR_TRANSPORT_GOOD;
   goto leave;
  }

  msleep(20);
 }

 rc = USB_STOR_TRANSPORT_ERROR;

 leave:
 kfree(buf);
 return rc;
}
