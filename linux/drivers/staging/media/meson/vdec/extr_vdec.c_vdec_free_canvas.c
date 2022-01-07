
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amvdec_session {int canvas_num; int * canvas_alloc; TYPE_1__* core; } ;
struct TYPE_2__ {int canvas; } ;


 int meson_canvas_free (int ,int ) ;

__attribute__((used)) static void vdec_free_canvas(struct amvdec_session *sess)
{
 int i;

 for (i = 0; i < sess->canvas_num; ++i)
  meson_canvas_free(sess->core->canvas, sess->canvas_alloc[i]);

 sess->canvas_num = 0;
}
