
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct us_data {unsigned char* iobuf; int srb; } ;
struct scatterlist {int dummy; } ;
struct datafab_info {int lun; int ssize; } ;


 int FROM_XFER_BUF ;
 int GFP_NOIO ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int datafab_bulk_read (struct us_data*,unsigned char*,int) ;
 int datafab_bulk_write (struct us_data*,unsigned char*,int) ;
 int datafab_determine_lun (struct us_data*,struct datafab_info*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 void* min (unsigned int,unsigned int) ;
 int usb_stor_access_xfer_buf (unsigned char*,int,int ,struct scatterlist**,unsigned int*,int ) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned char,unsigned char) ;

__attribute__((used)) static int datafab_write_data(struct us_data *us,
         struct datafab_info *info,
         u32 sector,
         u32 sectors)
{
 unsigned char *command = us->iobuf;
 unsigned char *reply = us->iobuf;
 unsigned char *buffer;
 unsigned char thistime;
 unsigned int totallen, alloclen;
 int len, result;
 unsigned int sg_offset = 0;
 struct scatterlist *sg = ((void*)0);






 if (sectors > 0x0FFFFFFF)
  return USB_STOR_TRANSPORT_ERROR;

 if (info->lun == -1) {
  result = datafab_determine_lun(us, info);
  if (result != USB_STOR_TRANSPORT_GOOD)
   return result;
 }

 totallen = sectors * info->ssize;





 alloclen = min(totallen, 65536u);
 buffer = kmalloc(alloclen, GFP_NOIO);
 if (buffer == ((void*)0))
  return USB_STOR_TRANSPORT_ERROR;

 do {



  len = min(totallen, alloclen);
  thistime = (len / info->ssize) & 0xff;


  usb_stor_access_xfer_buf(buffer, len, us->srb,
    &sg, &sg_offset, FROM_XFER_BUF);

  command[0] = 0;
  command[1] = thistime;
  command[2] = sector & 0xFF;
  command[3] = (sector >> 8) & 0xFF;
  command[4] = (sector >> 16) & 0xFF;

  command[5] = 0xE0 + (info->lun << 4);
  command[5] |= (sector >> 24) & 0x0F;
  command[6] = 0x30;
  command[7] = 0x02;


  result = datafab_bulk_write(us, command, 8);
  if (result != USB_STOR_XFER_GOOD)
   goto leave;


  result = datafab_bulk_write(us, buffer, len);
  if (result != USB_STOR_XFER_GOOD)
   goto leave;


  result = datafab_bulk_read(us, reply, 2);
  if (result != USB_STOR_XFER_GOOD)
   goto leave;

  if (reply[0] != 0x50 && reply[1] != 0) {
   usb_stor_dbg(us, "Gah! write return code: %02x %02x\n",
         reply[0], reply[1]);
   result = USB_STOR_TRANSPORT_ERROR;
   goto leave;
  }

  sector += thistime;
  totallen -= len;
 } while (totallen > 0);

 kfree(buffer);
 return USB_STOR_TRANSPORT_GOOD;

 leave:
 kfree(buffer);
 return USB_STOR_TRANSPORT_ERROR;
}
