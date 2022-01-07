
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_pointer {unsigned int this_residual; unsigned char* ptr; } ;
struct cumanascsi2_info {scalar_t__ base; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef scalar_t__ fasdmadir_t ;


 scalar_t__ CUMANASCSI2_PSEUDODMA ;
 scalar_t__ CUMANASCSI2_STATUS ;
 scalar_t__ DMA_OUT ;
 unsigned int STATUS_DRQ ;
 unsigned int STATUS_INT ;
 int printk (char*) ;
 unsigned int readb (scalar_t__) ;
 int readsw (scalar_t__,unsigned char*,int) ;
 unsigned long readw (scalar_t__) ;
 int writew (unsigned long,scalar_t__) ;

__attribute__((used)) static void
cumanascsi_2_dma_pseudo(struct Scsi_Host *host, struct scsi_pointer *SCp,
   fasdmadir_t direction, int transfer)
{
 struct cumanascsi2_info *info = (struct cumanascsi2_info *)host->hostdata;
 unsigned int length;
 unsigned char *addr;

 length = SCp->this_residual;
 addr = SCp->ptr;

 if (direction == DMA_OUT)
  printk ("PSEUDO_OUT???\n");

 else {
  if (transfer && (transfer & 255)) {
   while (length >= 256) {
    unsigned int status = readb(info->base + CUMANASCSI2_STATUS);

    if (status & STATUS_INT)
     return;

    if (!(status & STATUS_DRQ))
     continue;

    readsw(info->base + CUMANASCSI2_PSEUDODMA,
           addr, 256 >> 1);
    addr += 256;
    length -= 256;
   }
  }

  while (length > 0) {
   unsigned long word;
   unsigned int status = readb(info->base + CUMANASCSI2_STATUS);

   if (status & STATUS_INT)
    return;

   if (!(status & STATUS_DRQ))
    continue;

   word = readw(info->base + CUMANASCSI2_PSEUDODMA);
   *addr++ = word;
   if (--length > 0) {
    *addr++ = word >> 8;
    length --;
   }
  }
 }
}
