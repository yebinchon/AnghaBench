
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_session {struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;


 int DOS_GEN_CTRL0 ;
 int VLD_MEM_VIFIFO_BUF_CNTL ;
 int amvdec_clear_dos_bits (struct amvdec_core*,int ,int) ;
 int amvdec_write_dos (struct amvdec_core*,int ,int) ;

__attribute__((used)) static void vdec_1_conf_esparser(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;


 amvdec_write_dos(core, DOS_GEN_CTRL0, 0);
 amvdec_write_dos(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);
 amvdec_clear_dos_bits(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);
}
