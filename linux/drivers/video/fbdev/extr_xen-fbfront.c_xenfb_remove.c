
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xenfb_info {int fb; int gfns; scalar_t__ page; TYPE_1__* fb_info; } ;
struct xenbus_device {int dev; } ;
struct TYPE_4__ {int cmap; } ;


 struct xenfb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int fb_deferred_io_cleanup (TYPE_1__*) ;
 int framebuffer_release (TYPE_1__*) ;
 int free_page (unsigned long) ;
 int kfree (struct xenfb_info*) ;
 int unregister_framebuffer (TYPE_1__*) ;
 int vfree (int ) ;
 int xenfb_disconnect_backend (struct xenfb_info*) ;

__attribute__((used)) static int xenfb_remove(struct xenbus_device *dev)
{
 struct xenfb_info *info = dev_get_drvdata(&dev->dev);

 xenfb_disconnect_backend(info);
 if (info->fb_info) {
  fb_deferred_io_cleanup(info->fb_info);
  unregister_framebuffer(info->fb_info);
  fb_dealloc_cmap(&info->fb_info->cmap);
  framebuffer_release(info->fb_info);
 }
 free_page((unsigned long)info->page);
 vfree(info->gfns);
 vfree(info->fb);
 kfree(info);

 return 0;
}
