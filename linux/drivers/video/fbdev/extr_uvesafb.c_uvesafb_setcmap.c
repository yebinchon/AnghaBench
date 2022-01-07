
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvesafb_pal_entry {int red; int green; int blue; scalar_t__ pad; } ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ len; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_2__ cmap; TYPE_1__ var; } ;
struct fb_cmap {scalar_t__ start; scalar_t__ len; int* red; int* green; int* blue; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dac_width ;
 int kfree (struct uvesafb_pal_entry*) ;
 struct uvesafb_pal_entry* kmalloc_array (scalar_t__,int,int ) ;
 int uvesafb_setcolreg (scalar_t__,int,int,int,int ,struct fb_info*) ;
 int uvesafb_setpalette (struct uvesafb_pal_entry*,int,scalar_t__,struct fb_info*) ;

__attribute__((used)) static int uvesafb_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
 struct uvesafb_pal_entry *entries;
 int shift = 16 - dac_width;
 int i, err = 0;

 if (info->var.bits_per_pixel == 8) {
  if (cmap->start + cmap->len > info->cmap.start +
      info->cmap.len || cmap->start < info->cmap.start)
   return -EINVAL;

  entries = kmalloc_array(cmap->len, sizeof(*entries),
     GFP_KERNEL);
  if (!entries)
   return -ENOMEM;

  for (i = 0; i < cmap->len; i++) {
   entries[i].red = cmap->red[i] >> shift;
   entries[i].green = cmap->green[i] >> shift;
   entries[i].blue = cmap->blue[i] >> shift;
   entries[i].pad = 0;
  }
  err = uvesafb_setpalette(entries, cmap->len, cmap->start, info);
  kfree(entries);
 } else {





  for (i = 0; i < cmap->len; i++) {
   err |= uvesafb_setcolreg(cmap->start + i, cmap->red[i],
      cmap->green[i], cmap->blue[i],
      0, info);
  }
 }
 return err;
}
