
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct fb_info {int par; } ;


 int ssd1307fb_update_display (int ) ;

__attribute__((used)) static void ssd1307fb_deferred_io(struct fb_info *info,
    struct list_head *pagelist)
{
 ssd1307fb_update_display(info->par);
}
