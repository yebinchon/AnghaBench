
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvcg_mjpeg {int fmt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct uvcg_mjpeg* to_uvcg_mjpeg (struct config_item*) ;
 int uvcg_format_bma_controls_store (int *,char const*,size_t) ;

__attribute__((used)) static inline ssize_t
uvcg_mjpeg_bma_controls_store(struct config_item *item,
         const char *page, size_t len)
{
 struct uvcg_mjpeg *u = to_uvcg_mjpeg(item);
 return uvcg_format_bma_controls_store(&u->fmt, page, len);
}
