
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct scatterlist {unsigned int offset; unsigned int length; } ;
struct page {int dummy; } ;
typedef enum xfer_buf_dir { ____Placeholder_xfer_buf_dir } xfer_buf_dir ;


 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int TO_XFER_BUF ;
 unsigned char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 unsigned int scsi_sg_count (struct scsi_cmnd*) ;
 scalar_t__ scsi_sglist (struct scsi_cmnd*) ;
 struct page* sg_page (struct scatterlist*) ;

unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
           unsigned int buflen,
           struct scsi_cmnd *srb,
           unsigned int *index,
           unsigned int *offset,
           enum xfer_buf_dir dir)
{
 unsigned int cnt;


 if (scsi_sg_count(srb) == 0) {
  unsigned char *sgbuffer;

  if (*offset >= scsi_bufflen(srb))
   return 0;
  cnt = min(buflen, scsi_bufflen(srb) - *offset);

  sgbuffer = (unsigned char *)scsi_sglist(srb) + *offset;

  if (dir == TO_XFER_BUF)
   memcpy(sgbuffer, buffer, cnt);
  else
   memcpy(buffer, sgbuffer, cnt);
  *offset += cnt;






 } else {
  struct scatterlist *sg =
    (struct scatterlist *)scsi_sglist(srb)
    + *index;







  cnt = 0;
  while (cnt < buflen && *index < scsi_sg_count(srb)) {
   struct page *page = sg_page(sg) +
     ((sg->offset + *offset) >> PAGE_SHIFT);
   unsigned int poff = (sg->offset + *offset) &
         (PAGE_SIZE - 1);
   unsigned int sglen = sg->length - *offset;

   if (sglen > buflen - cnt) {

    sglen = buflen - cnt;
    *offset += sglen;
   } else {

    *offset = 0;
    ++*index;
    ++sg;
   }

   while (sglen > 0) {
    unsigned int plen = min(sglen, (unsigned int)
      PAGE_SIZE - poff);
    unsigned char *ptr = kmap(page);

    if (dir == TO_XFER_BUF)
     memcpy(ptr + poff, buffer + cnt, plen);
    else
     memcpy(buffer + cnt, ptr + poff, plen);
    kunmap(page);


    poff = 0;
    ++page;
    cnt += plen;
    sglen -= plen;
   }
  }
 }


 return cnt;
}
