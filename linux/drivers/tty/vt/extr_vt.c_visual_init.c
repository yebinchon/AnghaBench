
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int vc_num; int vc_complement_mask; int vc_s_complement_mask; int vc_size_row; int vc_cols; int vc_screenbuf_size; int vc_rows; scalar_t__ vc_can_do_color; TYPE_1__* vc_sw; int vc_cur_blink_ms; scalar_t__ vc_hi_font_mask; int * vc_uni_pagedir; int ** vc_uni_pagedir_loc; int * vc_display_fg; } ;
struct TYPE_3__ {int (* con_init ) (struct vc_data*,int) ;int owner; } ;


 int DEFAULT_CURSOR_BLINK_MS ;
 int __module_get (int ) ;
 TYPE_1__** con_driver_map ;
 int con_free_unimap (struct vc_data*) ;
 TYPE_1__* conswitchp ;
 int master_display_fg ;
 int module_put (int ) ;
 int stub1 (struct vc_data*,int) ;

__attribute__((used)) static void visual_init(struct vc_data *vc, int num, int init)
{

 if (vc->vc_sw)
  module_put(vc->vc_sw->owner);
 vc->vc_sw = conswitchp;

 if (con_driver_map[num])
  vc->vc_sw = con_driver_map[num];

 __module_get(vc->vc_sw->owner);
 vc->vc_num = num;
 vc->vc_display_fg = &master_display_fg;
 if (vc->vc_uni_pagedir_loc)
  con_free_unimap(vc);
 vc->vc_uni_pagedir_loc = &vc->vc_uni_pagedir;
 vc->vc_uni_pagedir = ((void*)0);
 vc->vc_hi_font_mask = 0;
 vc->vc_complement_mask = 0;
 vc->vc_can_do_color = 0;
 vc->vc_cur_blink_ms = DEFAULT_CURSOR_BLINK_MS;
 vc->vc_sw->con_init(vc, init);
 if (!vc->vc_complement_mask)
  vc->vc_complement_mask = vc->vc_can_do_color ? 0x7700 : 0x0800;
 vc->vc_s_complement_mask = vc->vc_complement_mask;
 vc->vc_size_row = vc->vc_cols << 1;
 vc->vc_screenbuf_size = vc->vc_rows * vc->vc_size_row;
}
