
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fb_pixmap {scalar_t__ buf_align; char* addr; int flags; scalar_t__ offset; scalar_t__ size; } ;
struct fb_info {TYPE_1__* fbops; } ;
struct TYPE_2__ {int (* fb_sync ) (struct fb_info*) ;} ;


 int FB_PIXMAP_IO ;
 int FB_PIXMAP_SYNC ;
 int stub1 (struct fb_info*) ;
 int stub2 (struct fb_info*) ;

char* fb_get_buffer_offset(struct fb_info *info, struct fb_pixmap *buf, u32 size)
{
 u32 align = buf->buf_align - 1, offset;
 char *addr = buf->addr;




 if (buf->flags & FB_PIXMAP_IO) {
  if (info->fbops->fb_sync && (buf->flags & FB_PIXMAP_SYNC))
   info->fbops->fb_sync(info);
  return addr;
 }


 offset = buf->offset + align;
 offset &= ~align;
 if (offset + size > buf->size) {




  if (info->fbops->fb_sync && (buf->flags & FB_PIXMAP_SYNC))
   info->fbops->fb_sync(info);
  offset = 0;
 }
 buf->offset = offset + size;
 addr += offset;

 return addr;
}
