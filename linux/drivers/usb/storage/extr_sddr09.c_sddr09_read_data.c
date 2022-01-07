
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int srb; scalar_t__ extra; } ;
struct sddr09_card_info {unsigned long blockshift; unsigned long blockmask; unsigned int capacity; unsigned int pageshift; unsigned int blocksize; unsigned int pagesize; unsigned int* lba_to_pba; } ;
struct scatterlist {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOIO ;
 int TO_XFER_BUF ;
 unsigned int UNDEF ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 int memset (unsigned char*,int ,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int sddr09_read20 (struct us_data*,unsigned long,unsigned int,unsigned int,unsigned char*,int ) ;
 int usb_stor_access_xfer_buf (unsigned char*,unsigned int,int ,struct scatterlist**,unsigned int*,int ) ;
 int usb_stor_dbg (struct us_data*,char*,unsigned int,unsigned int,...) ;

__attribute__((used)) static int
sddr09_read_data(struct us_data *us,
   unsigned long address,
   unsigned int sectors) {

 struct sddr09_card_info *info = (struct sddr09_card_info *) us->extra;
 unsigned char *buffer;
 unsigned int lba, maxlba, pba;
 unsigned int page, pages;
 unsigned int len, offset;
 struct scatterlist *sg;
 int result;


 lba = address >> info->blockshift;
 page = (address & info->blockmask);
 maxlba = info->capacity >> (info->pageshift + info->blockshift);
 if (lba >= maxlba)
  return -EIO;





 len = min(sectors, (unsigned int) info->blocksize) * info->pagesize;
 buffer = kmalloc(len, GFP_NOIO);
 if (!buffer)
  return -ENOMEM;




 result = 0;
 offset = 0;
 sg = ((void*)0);

 while (sectors > 0) {


  pages = min(sectors, info->blocksize - page);
  len = pages << info->pageshift;


  if (lba >= maxlba) {
   usb_stor_dbg(us, "Error: Requested lba %u exceeds maximum %u\n",
         lba, maxlba);
   result = -EIO;
   break;
  }


  pba = info->lba_to_pba[lba];

  if (pba == UNDEF) {

   usb_stor_dbg(us, "Read %d zero pages (LBA %d) page %d\n",
         pages, lba, page);
   memset(buffer, 0, len);

  } else {
   usb_stor_dbg(us, "Read %d pages, from PBA %d (LBA %d) page %d\n",
         pages, pba, lba, page);

   address = ((pba << info->blockshift) + page) <<
    info->pageshift;

   result = sddr09_read20(us, address>>1,
     pages, info->pageshift, buffer, 0);
   if (result)
    break;
  }


  usb_stor_access_xfer_buf(buffer, len, us->srb,
    &sg, &offset, TO_XFER_BUF);

  page = 0;
  lba++;
  sectors -= pages;
 }

 kfree(buffer);
 return result;
}
