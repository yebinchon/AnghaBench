
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int dmaFree; int lockup; int dmaPut; int dmaMax; int dmaCurrent; } ;
struct fb_info {struct nvidia_par* par; } ;


 int NVDmaNext (struct nvidia_par*,int) ;
 int READ_GET (struct nvidia_par*) ;
 int SKIPS ;
 int WRITE_PUT (struct nvidia_par*,int) ;
 int nvidiafb_safe_mode (struct fb_info*) ;
 int printk (char*) ;

__attribute__((used)) static void NVDmaWait(struct fb_info *info, int size)
{
 struct nvidia_par *par = info->par;
 int dmaGet;
 int count = 1000000000, cnt;
 size++;

 while (par->dmaFree < size && --count && !par->lockup) {
  dmaGet = READ_GET(par);

  if (par->dmaPut >= dmaGet) {
   par->dmaFree = par->dmaMax - par->dmaCurrent;
   if (par->dmaFree < size) {
    NVDmaNext(par, 0x20000000);
    if (dmaGet <= SKIPS) {
     if (par->dmaPut <= SKIPS)
      WRITE_PUT(par, SKIPS + 1);
     cnt = 1000000000;
     do {
      dmaGet = READ_GET(par);
     } while (--cnt && dmaGet <= SKIPS);
     if (!cnt) {
      printk("DMA Get lockup\n");
      par->lockup = 1;
     }
    }
    WRITE_PUT(par, SKIPS);
    par->dmaCurrent = par->dmaPut = SKIPS;
    par->dmaFree = dmaGet - (SKIPS + 1);
   }
  } else
   par->dmaFree = dmaGet - par->dmaCurrent - 1;
 }

 if (!count) {
  printk("nvidiafb: DMA Wait Lockup\n");
  nvidiafb_safe_mode(info);
 }
}
