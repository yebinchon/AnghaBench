
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int cmap; } ;


 int fb_dealloc_cmap (int *) ;

__attribute__((used)) static void fb_info_clear(struct fb_info *info)
{
 fb_dealloc_cmap(&info->cmap);
}
