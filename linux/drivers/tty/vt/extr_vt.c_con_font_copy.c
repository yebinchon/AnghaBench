
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; int vc_num; TYPE_1__* vc_sw; } ;
struct console_font_op {int height; } ;
struct TYPE_2__ {int (* con_font_copy ) (struct vc_data*,int) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int ENOTTY ;
 scalar_t__ KD_TEXT ;
 int console_lock () ;
 int console_unlock () ;
 int stub1 (struct vc_data*,int) ;
 int vc_cons_allocated (int) ;

__attribute__((used)) static int con_font_copy(struct vc_data *vc, struct console_font_op *op)
{
 int con = op->height;
 int rc;


 console_lock();
 if (vc->vc_mode != KD_TEXT)
  rc = -EINVAL;
 else if (!vc->vc_sw->con_font_copy)
  rc = -ENOSYS;
 else if (con < 0 || !vc_cons_allocated(con))
  rc = -ENOTTY;
 else if (con == vc->vc_num)
  rc = 0;
 else
  rc = vc->vc_sw->con_font_copy(vc, con);
 console_unlock();
 return rc;
}
