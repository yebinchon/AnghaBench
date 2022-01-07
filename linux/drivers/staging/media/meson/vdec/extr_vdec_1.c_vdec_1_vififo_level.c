
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amvdec_session {struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;


 int VLD_MEM_VIFIFO_LEVEL ;
 int amvdec_read_dos (struct amvdec_core*,int ) ;

__attribute__((used)) static u32 vdec_1_vififo_level(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;

 return amvdec_read_dos(core, VLD_MEM_VIFIFO_LEVEL);
}
