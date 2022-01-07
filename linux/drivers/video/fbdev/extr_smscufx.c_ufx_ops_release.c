
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufx_data {scalar_t__ fb_count; int kref; int free_framebuffer_work; scalar_t__ virtualized; } ;
struct fb_info {int node; TYPE_1__* fbops; int * fbdefio; struct ufx_data* par; } ;
struct TYPE_2__ {int fb_mmap; } ;


 int HZ ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int kfree (int *) ;
 int kref_put (int *,int ) ;
 int pr_debug (char*,int ,int,scalar_t__) ;
 int schedule_delayed_work (int *,int ) ;
 int ufx_free ;
 int ufx_ops_mmap ;

__attribute__((used)) static int ufx_ops_release(struct fb_info *info, int user)
{
 struct ufx_data *dev = info->par;

 dev->fb_count--;


 if (dev->virtualized && (dev->fb_count == 0))
  schedule_delayed_work(&dev->free_framebuffer_work, HZ);

 if ((dev->fb_count == 0) && (info->fbdefio)) {
  fb_deferred_io_cleanup(info);
  kfree(info->fbdefio);
  info->fbdefio = ((void*)0);
  info->fbops->fb_mmap = ufx_ops_mmap;
 }

 pr_debug("released /dev/fb%d user=%d count=%d",
    info->node, user, dev->fb_count);

 kref_put(&dev->kref, ufx_free);

 return 0;
}
