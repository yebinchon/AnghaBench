
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int srb; scalar_t__ extra; } ;
struct sddr09_card_info {unsigned long blockshift; unsigned long blockmask; unsigned int capacity; unsigned int pageshift; unsigned int blocksize; unsigned int pagesize; } ;
struct scatterlist {int dummy; } ;


 int CONTROL_SHIFT ;
 int EIO ;
 int ENOMEM ;
 int FROM_XFER_BUF ;
 int GFP_NOIO ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int sddr09_write_lba (struct us_data*,unsigned int,unsigned int,unsigned int,unsigned char*,unsigned char*) ;
 int usb_stor_access_xfer_buf (unsigned char*,unsigned int,int ,struct scatterlist**,unsigned int*,int ) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int
sddr09_write_data(struct us_data *us,
    unsigned long address,
    unsigned int sectors) {

 struct sddr09_card_info *info = (struct sddr09_card_info *) us->extra;
 unsigned int lba, maxlba, page, pages;
 unsigned int pagelen, blocklen;
 unsigned char *blockbuffer;
 unsigned char *buffer;
 unsigned int len, offset;
 struct scatterlist *sg;
 int result;


 lba = address >> info->blockshift;
 page = (address & info->blockmask);
 maxlba = info->capacity >> (info->pageshift + info->blockshift);
 if (lba >= maxlba)
  return -EIO;
 pagelen = (1 << info->pageshift) + (1 << CONTROL_SHIFT);
 blocklen = (pagelen << info->blockshift);
 blockbuffer = kmalloc(blocklen, GFP_NOIO);
 if (!blockbuffer)
  return -ENOMEM;







 len = min(sectors, (unsigned int) info->blocksize) * info->pagesize;
 buffer = kmalloc(len, GFP_NOIO);
 if (!buffer) {
  kfree(blockbuffer);
  return -ENOMEM;
 }

 result = 0;
 offset = 0;
 sg = ((void*)0);

 while (sectors > 0) {



  pages = min(sectors, info->blocksize - page);
  len = (pages << info->pageshift);


  if (lba >= maxlba) {
   usb_stor_dbg(us, "Error: Requested lba %u exceeds maximum %u\n",
         lba, maxlba);
   result = -EIO;
   break;
  }


  usb_stor_access_xfer_buf(buffer, len, us->srb,
    &sg, &offset, FROM_XFER_BUF);

  result = sddr09_write_lba(us, lba, page, pages,
    buffer, blockbuffer);
  if (result)
   break;

  page = 0;
  lba++;
  sectors -= pages;
 }

 kfree(buffer);
 kfree(blockbuffer);

 return result;
}
