
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct amvdec_session {scalar_t__ canvas_num; int * canvas_alloc; TYPE_1__* core; } ;
struct TYPE_2__ {int canvas; int dev; } ;


 int ENOMEM ;
 scalar_t__ MAX_CANVAS ;
 int dev_err (int ,char*) ;
 int meson_canvas_alloc (int ,int *) ;

__attribute__((used)) static int canvas_alloc(struct amvdec_session *sess, u8 *canvas_id)
{
 int ret;

 if (sess->canvas_num >= MAX_CANVAS) {
  dev_err(sess->core->dev, "Reached max number of canvas\n");
  return -ENOMEM;
 }

 ret = meson_canvas_alloc(sess->core->canvas, canvas_id);
 if (ret)
  return ret;

 sess->canvas_alloc[sess->canvas_num++] = *canvas_id;
 return 0;
}
