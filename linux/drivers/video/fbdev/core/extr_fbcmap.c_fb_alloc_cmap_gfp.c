
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_cmap {int len; scalar_t__ start; int * transp; void* blue; void* green; void* red; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int __GFP_NOWARN ;
 int fb_copy_cmap (int ,struct fb_cmap*) ;
 int fb_dealloc_cmap (struct fb_cmap*) ;
 int fb_default_cmap (int) ;
 void* kmalloc (int,int ) ;

int fb_alloc_cmap_gfp(struct fb_cmap *cmap, int len, int transp, gfp_t flags)
{
 int size = len * sizeof(u16);
 int ret = -ENOMEM;

 flags |= __GFP_NOWARN;

 if (cmap->len != len) {
  fb_dealloc_cmap(cmap);
  if (!len)
   return 0;

  cmap->red = kmalloc(size, flags);
  if (!cmap->red)
   goto fail;
  cmap->green = kmalloc(size, flags);
  if (!cmap->green)
   goto fail;
  cmap->blue = kmalloc(size, flags);
  if (!cmap->blue)
   goto fail;
  if (transp) {
   cmap->transp = kmalloc(size, flags);
   if (!cmap->transp)
    goto fail;
  } else {
   cmap->transp = ((void*)0);
  }
 }
 cmap->start = 0;
 cmap->len = len;
 ret = fb_copy_cmap(fb_default_cmap(len), cmap);
 if (ret)
  goto fail;
 return 0;

fail:
 fb_dealloc_cmap(cmap);
 return ret;
}
