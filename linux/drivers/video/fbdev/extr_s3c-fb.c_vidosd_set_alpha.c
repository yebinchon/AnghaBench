
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ has_osd_alpha; } ;
struct s3c_fb_win {int index; TYPE_1__ variant; struct s3c_fb* parent; } ;
struct s3c_fb {int variant; scalar_t__ regs; } ;


 scalar_t__ VIDOSD_C (int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vidosd_set_alpha(struct s3c_fb_win *win, u32 alpha)
{
 struct s3c_fb *sfb = win->parent;

 if (win->variant.has_osd_alpha)
  writel(alpha, sfb->regs + VIDOSD_C(win->index, sfb->variant));
}
