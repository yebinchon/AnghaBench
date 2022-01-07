
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_info {int dummy; } ;
struct fb_cmap_user {int len; int start; int * transp; int * blue; int * green; int * red; } ;
struct fb_cmap {int start; int transp; int blue; int green; int red; } ;


 int E2BIG ;
 int EFAULT ;
 int GFP_KERNEL ;
 scalar_t__ copy_from_user (int ,int *,int) ;
 int fb_alloc_cmap_gfp (struct fb_cmap*,int,int ,int ) ;
 int fb_dealloc_cmap (struct fb_cmap*) ;
 int fb_set_cmap (struct fb_cmap*,struct fb_info*) ;
 int lock_fb_info (struct fb_info*) ;
 int memset (struct fb_cmap*,int ,int) ;
 int unlock_fb_info (struct fb_info*) ;

int fb_set_user_cmap(struct fb_cmap_user *cmap, struct fb_info *info)
{
 int rc, size = cmap->len * sizeof(u16);
 struct fb_cmap umap;

 if (size < 0 || size < cmap->len)
  return -E2BIG;

 memset(&umap, 0, sizeof(struct fb_cmap));
 rc = fb_alloc_cmap_gfp(&umap, cmap->len, cmap->transp != ((void*)0),
    GFP_KERNEL);
 if (rc)
  return rc;
 if (copy_from_user(umap.red, cmap->red, size) ||
     copy_from_user(umap.green, cmap->green, size) ||
     copy_from_user(umap.blue, cmap->blue, size) ||
     (cmap->transp && copy_from_user(umap.transp, cmap->transp, size))) {
  rc = -EFAULT;
  goto out;
 }
 umap.start = cmap->start;
 lock_fb_info(info);
 rc = fb_set_cmap(&umap, info);
 unlock_fb_info(info);
out:
 fb_dealloc_cmap(&umap);
 return rc;
}
