
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amvdec_session {TYPE_1__* fmt_out; } ;
struct amvdec_codec_ops {scalar_t__ recycle; scalar_t__ can_recycle; } ;
struct TYPE_2__ {struct amvdec_codec_ops* codec_ops; } ;



__attribute__((used)) static int vdec_codec_needs_recycle(struct amvdec_session *sess)
{
 struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;

 return codec_ops->can_recycle && codec_ops->recycle;
}
