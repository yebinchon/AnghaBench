
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amvdec_core {int dummy; } ;


 int amvdec_read_dos (struct amvdec_core*,int) ;
 int amvdec_write_dos (struct amvdec_core*,int,int) ;

void amvdec_write_dos_bits(struct amvdec_core *core, u32 reg, u32 val)
{
 amvdec_write_dos(core, reg, amvdec_read_dos(core, reg) | val);
}
