
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int numerator; int denominator; } ;
struct amvdec_session {TYPE_1__ pixelaspect; struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;





 int MPEG2_SEQ_DAR_MASK ;
 int MREG_SEQ_INFO ;
 int amvdec_read_dos (struct amvdec_core*,int ) ;
 int amvdec_set_par_from_dar (struct amvdec_session*,int,int) ;

__attribute__((used)) static void codec_mpeg12_update_dar(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;
 u32 seq = amvdec_read_dos(core, MREG_SEQ_INFO);
 u32 ar = seq & MPEG2_SEQ_DAR_MASK;

 switch (ar) {
 case 128:
  amvdec_set_par_from_dar(sess, 4, 3);
  break;
 case 130:
  amvdec_set_par_from_dar(sess, 16, 9);
  break;
 case 129:
  amvdec_set_par_from_dar(sess, 221, 100);
  break;
 default:
  sess->pixelaspect.numerator = 1;
  sess->pixelaspect.denominator = 1;
  break;
 }
}
