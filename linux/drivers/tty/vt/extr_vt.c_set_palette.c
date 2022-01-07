
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_set_palette ) (struct vc_data*,int ) ;} ;


 scalar_t__ KD_GRAPHICS ;
 int WARN_CONSOLE_UNLOCKED () ;
 int color_table ;
 int stub1 (struct vc_data*,int ) ;

__attribute__((used)) static void set_palette(struct vc_data *vc)
{
 WARN_CONSOLE_UNLOCKED();

 if (vc->vc_mode != KD_GRAPHICS && vc->vc_sw->con_set_palette)
  vc->vc_sw->con_set_palette(vc, color_table);
}
