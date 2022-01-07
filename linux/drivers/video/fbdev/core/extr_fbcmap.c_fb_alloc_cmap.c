
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_cmap {int dummy; } ;


 int GFP_ATOMIC ;
 int fb_alloc_cmap_gfp (struct fb_cmap*,int,int,int ) ;

int fb_alloc_cmap(struct fb_cmap *cmap, int len, int transp)
{
 return fb_alloc_cmap_gfp(cmap, len, transp, GFP_ATOMIC);
}
