
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ osd_size_off; } ;
struct s3c_fb_win {TYPE_1__ variant; int index; struct s3c_fb* parent; } ;
struct s3c_fb {int variant; scalar_t__ regs; } ;


 scalar_t__ OSD_BASE (int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vidosd_set_size(struct s3c_fb_win *win, u32 size)
{
 struct s3c_fb *sfb = win->parent;


 if (win->variant.osd_size_off)
  writel(size, sfb->regs + OSD_BASE(win->index, sfb->variant)
    + win->variant.osd_size_off);
}
