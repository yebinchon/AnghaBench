
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_memory_read {int buffer_size; int w; int h; int buffer; int y; int x; } ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int (* memory_read ) (struct omap_dss_device*,void*,int,int ,int ,int,int) ;} ;


 int DBG (char*) ;
 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int access_ok (int ,int) ;
 scalar_t__ copy_to_user (int ,void*,int) ;
 struct omap_dss_device* fb2display (struct fb_info*) ;
 int stub1 (struct omap_dss_device*,void*,int,int ,int ,int,int) ;
 int vfree (void*) ;
 void* vmalloc (int) ;

__attribute__((used)) static int omapfb_memory_read(struct fb_info *fbi,
  struct omapfb_memory_read *mr)
{
 struct omap_dss_device *display = fb2display(fbi);
 void *buf;
 int r;

 if (!display || !display->driver->memory_read)
  return -ENOENT;

 if (!access_ok(mr->buffer, mr->buffer_size))
  return -EFAULT;

 if (mr->w > 4096 || mr->h > 4096)
  return -EINVAL;

 if (mr->w * mr->h * 3 > mr->buffer_size)
  return -EINVAL;

 buf = vmalloc(mr->buffer_size);
 if (!buf) {
  DBG("vmalloc failed\n");
  return -ENOMEM;
 }

 r = display->driver->memory_read(display, buf, mr->buffer_size,
   mr->x, mr->y, mr->w, mr->h);

 if (r > 0) {
  if (copy_to_user(mr->buffer, buf, r))
   r = -EFAULT;
 }

 vfree(buf);

 return r;
}
