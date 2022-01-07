
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amvdec_session {int should_stop; TYPE_1__* core; TYPE_2__* fmt_out; } ;
struct amvdec_ops {int (* stop ) (struct amvdec_session*) ;} ;
struct amvdec_codec_ops {int (* drain ) (struct amvdec_session*) ;} ;
struct TYPE_4__ {struct amvdec_codec_ops* codec_ops; struct amvdec_ops* vdec_ops; } ;
struct TYPE_3__ {int dos_parser_clk; int dos_clk; } ;


 int clk_disable_unprepare (int ) ;
 int stub1 (struct amvdec_session*) ;
 int stub2 (struct amvdec_session*) ;
 int vdec_wait_inactive (struct amvdec_session*) ;

__attribute__((used)) static void vdec_poweroff(struct amvdec_session *sess)
{
 struct amvdec_ops *vdec_ops = sess->fmt_out->vdec_ops;
 struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;

 sess->should_stop = 1;
 vdec_wait_inactive(sess);
 if (codec_ops->drain)
  codec_ops->drain(sess);

 vdec_ops->stop(sess);
 clk_disable_unprepare(sess->core->dos_clk);
 clk_disable_unprepare(sess->core->dos_parser_clk);
}
