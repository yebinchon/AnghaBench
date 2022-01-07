
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dev; TYPE_1__* fbops; int * fbdefio; struct dlfb_data* par; } ;
struct dlfb_data {scalar_t__ fb_count; } ;
struct TYPE_2__ {int fb_mmap; } ;


 int dev_dbg (int ,char*,int,scalar_t__) ;
 int dlfb_ops_mmap ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int kfree (int *) ;

__attribute__((used)) static int dlfb_ops_release(struct fb_info *info, int user)
{
 struct dlfb_data *dlfb = info->par;

 dlfb->fb_count--;

 if ((dlfb->fb_count == 0) && (info->fbdefio)) {
  fb_deferred_io_cleanup(info);
  kfree(info->fbdefio);
  info->fbdefio = ((void*)0);
  info->fbops->fb_mmap = dlfb_ops_mmap;
 }

 dev_dbg(info->dev, "release, user=%d count=%d\n", user, dlfb->fb_count);

 return 0;
}
