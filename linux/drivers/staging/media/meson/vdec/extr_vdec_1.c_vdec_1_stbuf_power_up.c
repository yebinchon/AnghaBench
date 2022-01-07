
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amvdec_session {scalar_t__ vififo_paddr; scalar_t__ vififo_size; struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;


 scalar_t__ BIT (int) ;
 scalar_t__ MEM_BUFCTRL_MANUAL ;
 int MEM_CTRL_EMPTY_EN ;
 int MEM_CTRL_FILL_EN ;
 int MEM_FIFO_CNT_BIT ;
 int MEM_FILL_ON_LEVEL ;
 int POWER_CTL_VLD ;
 int VLD_MEM_VIFIFO_BUF_CNTL ;
 int VLD_MEM_VIFIFO_CONTROL ;
 int VLD_MEM_VIFIFO_CURR_PTR ;
 int VLD_MEM_VIFIFO_END_PTR ;
 int VLD_MEM_VIFIFO_START_PTR ;
 int VLD_MEM_VIFIFO_WP ;
 int VLD_MEM_VIFIFO_WRAP_COUNT ;
 int amvdec_clear_dos_bits (struct amvdec_core*,int ,int) ;
 int amvdec_write_dos (struct amvdec_core*,int ,scalar_t__) ;
 int amvdec_write_dos_bits (struct amvdec_core*,int ,int) ;

__attribute__((used)) static int vdec_1_stbuf_power_up(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;

 amvdec_write_dos(core, VLD_MEM_VIFIFO_CONTROL, 0);
 amvdec_write_dos(core, VLD_MEM_VIFIFO_WRAP_COUNT, 0);
 amvdec_write_dos(core, POWER_CTL_VLD, BIT(4));

 amvdec_write_dos(core, VLD_MEM_VIFIFO_START_PTR, sess->vififo_paddr);
 amvdec_write_dos(core, VLD_MEM_VIFIFO_CURR_PTR, sess->vififo_paddr);
 amvdec_write_dos(core, VLD_MEM_VIFIFO_END_PTR,
    sess->vififo_paddr + sess->vififo_size - 8);

 amvdec_write_dos_bits(core, VLD_MEM_VIFIFO_CONTROL, 1);
 amvdec_clear_dos_bits(core, VLD_MEM_VIFIFO_CONTROL, 1);

 amvdec_write_dos(core, VLD_MEM_VIFIFO_BUF_CNTL, MEM_BUFCTRL_MANUAL);
 amvdec_write_dos(core, VLD_MEM_VIFIFO_WP, sess->vififo_paddr);

 amvdec_write_dos_bits(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);
 amvdec_clear_dos_bits(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);

 amvdec_write_dos_bits(core, VLD_MEM_VIFIFO_CONTROL,
         (0x11 << MEM_FIFO_CNT_BIT) | MEM_FILL_ON_LEVEL |
         MEM_CTRL_FILL_EN | MEM_CTRL_EMPTY_EN);

 return 0;
}
