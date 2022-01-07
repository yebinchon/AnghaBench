
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; int vc_cursor_type; TYPE_1__* vc_sw; scalar_t__ vc_deccm; } ;
struct TYPE_2__ {int (* con_cursor ) (struct vc_data*,int ) ;} ;


 int CM_DRAW ;
 scalar_t__ KD_GRAPHICS ;
 int add_softcursor (struct vc_data*) ;
 int clear_selection () ;
 int con_is_fg (struct vc_data*) ;
 scalar_t__ console_blanked ;
 int hide_cursor (struct vc_data*) ;
 struct vc_data* sel_cons ;
 int stub1 (struct vc_data*,int ) ;

__attribute__((used)) static void set_cursor(struct vc_data *vc)
{
 if (!con_is_fg(vc) || console_blanked || vc->vc_mode == KD_GRAPHICS)
  return;
 if (vc->vc_deccm) {
  if (vc == sel_cons)
   clear_selection();
  add_softcursor(vc);
  if ((vc->vc_cursor_type & 0x0f) != 1)
   vc->vc_sw->con_cursor(vc, CM_DRAW);
 } else
  hide_cursor(vc);
}
