
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* Data; unsigned char Len; unsigned char WrPtr; unsigned char RdPtr; } ;
typedef TYPE_1__ tDpramBootSpooler ;
struct HYSDN_CARD {int debug_flags; scalar_t__ dpram; } ;


 int ERR_BOOTSEQ_FAIL ;
 int LOG_POF_CARD ;
 int hysdn_addlog (struct HYSDN_CARD*,char*,...) ;

__attribute__((used)) static int
ergo_writebootseq(struct HYSDN_CARD *card, unsigned char *buf, int len)
{
 tDpramBootSpooler *sp = (tDpramBootSpooler *) card->dpram;
 unsigned char *dst;
 unsigned char buflen;
 int nr_write;
 unsigned char tmp_rdptr;
 unsigned char wr_mirror;
 int i;

 if (card->debug_flags & LOG_POF_CARD)
  hysdn_addlog(card, "ERGO: write boot seq len=%d ", len);

 dst = sp->Data;
 buflen = sp->Len;
 wr_mirror = sp->WrPtr;


 i = 0x1000;
 while (len) {


  do {
   tmp_rdptr = sp->RdPtr;
   i--;
  } while (i && (tmp_rdptr != sp->RdPtr));

  if (!i) {
   if (card->debug_flags & LOG_POF_CARD)
    hysdn_addlog(card, "ERGO: write boot seq timeout");
   return (-ERR_BOOTSEQ_FAIL);
  }
  if ((nr_write = tmp_rdptr - wr_mirror - 1) < 0)
   nr_write += buflen;

  if (!nr_write)
   continue;

  if (nr_write > len)
   nr_write = len;
  i = 0x1000;


  len -= nr_write;
  while (nr_write--) {
   *(dst + wr_mirror) = *buf++;
   if (++wr_mirror >= buflen)
    wr_mirror = 0;
   sp->WrPtr = wr_mirror;
  }

 }
 return (0);
}
