
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct amvdec_session {scalar_t__ vififo_size; struct amvdec_core* core; TYPE_1__* fmt_out; } ;
struct amvdec_ops {scalar_t__ (* vififo_level ) (struct amvdec_session*) ;} ;
struct amvdec_core {int dev; } ;
struct TYPE_2__ {struct amvdec_ops* vdec_ops; } ;


 int PARSER_VIDEO_HOLE ;
 int SZ_1K ;
 scalar_t__ amvdec_read_parser (struct amvdec_core*,int ) ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (struct amvdec_session*) ;

__attribute__((used)) static u32 esparser_vififo_get_free_space(struct amvdec_session *sess)
{
 u32 vififo_usage;
 struct amvdec_ops *vdec_ops = sess->fmt_out->vdec_ops;
 struct amvdec_core *core = sess->core;

 vififo_usage = vdec_ops->vififo_level(sess);
 vififo_usage += amvdec_read_parser(core, PARSER_VIDEO_HOLE);
 vififo_usage += (6 * SZ_1K);

 if (vififo_usage > sess->vififo_size) {
  dev_warn(sess->core->dev,
    "VIFIFO usage (%u) > VIFIFO size (%u)\n",
    vififo_usage, sess->vififo_size);
  return 0;
 }

 return sess->vififo_size - vififo_usage;
}
