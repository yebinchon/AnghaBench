
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvcg_uncompressed {int fmt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct uvcg_uncompressed* to_uvcg_uncompressed (struct config_item*) ;
 int uvcg_format_bma_controls_show (int *,char*) ;

__attribute__((used)) static inline ssize_t
uvcg_uncompressed_bma_controls_show(struct config_item *item, char *page)
{
 struct uvcg_uncompressed *unc = to_uvcg_uncompressed(item);
 return uvcg_format_bma_controls_show(&unc->fmt, page);
}
