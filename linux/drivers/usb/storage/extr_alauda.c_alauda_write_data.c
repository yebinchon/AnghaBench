
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct us_data {int srb; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {unsigned int blockshift; unsigned int pageshift; unsigned int blocksize; unsigned int pagesize; unsigned long blockmask; unsigned int capacity; } ;


 int FROM_XFER_BUF ;
 int GFP_NOIO ;
 TYPE_1__ MEDIA_INFO (struct us_data*) ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int alauda_write_lba (struct us_data*,unsigned int,unsigned int,unsigned int,unsigned char*,unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 unsigned char* kmalloc_array (unsigned int,unsigned int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int usb_stor_access_xfer_buf (unsigned char*,unsigned int,int ,struct scatterlist**,unsigned int*,int ) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int alauda_write_data(struct us_data *us, unsigned long address,
  unsigned int sectors)
{
 unsigned char *buffer, *blockbuffer;
 unsigned int page, len, offset;
 unsigned int blockshift = MEDIA_INFO(us).blockshift;
 unsigned int pageshift = MEDIA_INFO(us).pageshift;
 unsigned int blocksize = MEDIA_INFO(us).blocksize;
 unsigned int pagesize = MEDIA_INFO(us).pagesize;
 struct scatterlist *sg;
 u16 lba, max_lba;
 int result;







 len = min(sectors, blocksize) * pagesize;
 buffer = kmalloc(len, GFP_NOIO);
 if (!buffer)
  return USB_STOR_TRANSPORT_ERROR;





 blockbuffer = kmalloc_array(pagesize + 64, blocksize, GFP_NOIO);
 if (!blockbuffer) {
  kfree(buffer);
  return USB_STOR_TRANSPORT_ERROR;
 }


 lba = address >> blockshift;
 page = (address & MEDIA_INFO(us).blockmask);
 max_lba = MEDIA_INFO(us).capacity >> (pageshift + blockshift);

 result = USB_STOR_TRANSPORT_GOOD;
 offset = 0;
 sg = ((void*)0);

 while (sectors > 0) {

  unsigned int pages = min(sectors, blocksize - page);
  len = pages << pageshift;


  if (lba >= max_lba) {
   usb_stor_dbg(us, "Requested lba %u exceeds maximum %u\n",
         lba, max_lba);
   result = USB_STOR_TRANSPORT_ERROR;
   break;
  }


  usb_stor_access_xfer_buf(buffer, len, us->srb,
    &sg, &offset, FROM_XFER_BUF);

  result = alauda_write_lba(us, lba, page, pages, buffer,
   blockbuffer);
  if (result != USB_STOR_TRANSPORT_GOOD)
   break;

  page = 0;
  lba++;
  sectors -= pages;
 }

 kfree(buffer);
 kfree(blockbuffer);
 return result;
}
