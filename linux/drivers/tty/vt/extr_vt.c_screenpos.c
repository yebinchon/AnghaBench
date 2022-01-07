
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {TYPE_1__* vc_sw; scalar_t__ vc_visible_origin; scalar_t__ vc_origin; } ;
struct TYPE_2__ {unsigned short* (* con_screen_pos ) (struct vc_data*,int) ;} ;


 unsigned short* stub1 (struct vc_data*,int) ;

__attribute__((used)) static inline unsigned short *screenpos(struct vc_data *vc, int offset, int viewed)
{
 unsigned short *p;

 if (!viewed)
  p = (unsigned short *)(vc->vc_origin + offset);
 else if (!vc->vc_sw->con_screen_pos)
  p = (unsigned short *)(vc->vc_visible_origin + offset);
 else
  p = vc->vc_sw->con_screen_pos(vc, offset);
 return p;
}
