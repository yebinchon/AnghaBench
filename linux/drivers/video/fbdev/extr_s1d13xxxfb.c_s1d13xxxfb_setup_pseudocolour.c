
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int length; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_10__ {TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; } ;
struct TYPE_6__ {int visual; } ;
struct fb_info {TYPE_5__ var; TYPE_1__ fix; } ;


 int FB_VISUAL_PSEUDOCOLOR ;

__attribute__((used)) static inline void
s1d13xxxfb_setup_pseudocolour(struct fb_info *info)
{
 info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

 info->var.red.length = 4;
 info->var.green.length = 4;
 info->var.blue.length = 4;
}
