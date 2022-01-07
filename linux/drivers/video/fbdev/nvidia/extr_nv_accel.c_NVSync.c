
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int PGRAPH; } ;
struct fb_info {struct nvidia_par* par; } ;


 scalar_t__ NV_RD32 (int ,int) ;
 int nvidiafb_safe_mode (struct fb_info*) ;
 int printk (char*) ;

__attribute__((used)) static inline void NVSync(struct fb_info *info)
{
 struct nvidia_par *par = info->par;
 int count = 1000000000;

 while (--count && NV_RD32(par->PGRAPH, 0x0700)) ;

 if (!count) {
  printk("nvidiafb: DMA Sync lockup\n");
  nvidiafb_safe_mode(info);
 }
}
