
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eerbuffer {unsigned long tail; unsigned long buffersize; scalar_t__* buffer; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SIZE ;
 unsigned long dasd_eer_get_filled_bytes (struct eerbuffer*) ;
 int memcpy (char*,scalar_t__,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static int dasd_eer_read_buffer(struct eerbuffer *eerb, char *data, int count)
{

 unsigned long tailindex,localtail;
 unsigned long rest, len, finalcount;
 char *nextdata;

 finalcount = min(count, dasd_eer_get_filled_bytes(eerb));
 nextdata = data;
 rest = finalcount;
 while (rest > 0) {
   tailindex = eerb->tail / PAGE_SIZE;
   localtail = eerb->tail % PAGE_SIZE;
  len = min(rest, PAGE_SIZE - localtail);
  memcpy(nextdata, eerb->buffer[tailindex] + localtail, len);
  nextdata += len;
  rest -= len;
  eerb->tail += len;
  if (eerb->tail == eerb->buffersize)
   eerb->tail = 0;
  BUG_ON(eerb->tail > eerb->buffersize);
 }
 return finalcount;
}
