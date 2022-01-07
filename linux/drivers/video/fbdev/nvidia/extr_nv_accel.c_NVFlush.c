
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {scalar_t__ dmaPut; } ;
struct fb_info {struct nvidia_par* par; } ;


 scalar_t__ READ_GET (struct nvidia_par*) ;
 int nvidiafb_safe_mode (struct fb_info*) ;
 int printk (char*) ;

__attribute__((used)) static inline void NVFlush(struct fb_info *info)
{
 struct nvidia_par *par = info->par;
 int count = 1000000000;

 while (--count && READ_GET(par) != par->dmaPut) ;

 if (!count) {
  printk("nvidiafb: DMA Flush lockup\n");
  nvidiafb_safe_mode(info);
 }
}
