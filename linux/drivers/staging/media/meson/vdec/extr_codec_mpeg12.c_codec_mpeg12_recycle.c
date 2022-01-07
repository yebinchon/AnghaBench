
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amvdec_core {int dummy; } ;


 int MREG_BUFFERIN ;
 int amvdec_write_dos (struct amvdec_core*,int ,scalar_t__) ;

__attribute__((used)) static void codec_mpeg12_recycle(struct amvdec_core *core, u32 buf_idx)
{
 amvdec_write_dos(core, MREG_BUFFERIN, buf_idx + 1);
}
