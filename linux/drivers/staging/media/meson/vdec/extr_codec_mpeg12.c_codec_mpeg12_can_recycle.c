
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_core {int dummy; } ;


 int MREG_BUFFERIN ;
 int amvdec_read_dos (struct amvdec_core*,int ) ;

__attribute__((used)) static int codec_mpeg12_can_recycle(struct amvdec_core *core)
{
 return !amvdec_read_dos(core, MREG_BUFFERIN);
}
