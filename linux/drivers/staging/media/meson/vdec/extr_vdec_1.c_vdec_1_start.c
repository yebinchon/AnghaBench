
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amvdec_session {scalar_t__ pixfmt_cap; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_core {int regmap_ao; int vdec_1_clk; } ;
struct amvdec_codec_ops {int (* start ) (struct amvdec_session*) ;} ;
struct TYPE_2__ {int firmware_path; struct amvdec_codec_ops* codec_ops; } ;


 int AO_RTI_GEN_PWR_ISO0 ;
 int AO_RTI_GEN_PWR_SLEEP0 ;
 int ASSIST_MBOX1_CLR_REG ;
 int ASSIST_MBOX1_MASK ;
 int BIT (int) ;
 int DOS_GCLK_EN0 ;
 int DOS_MEM_PD_VDEC ;
 int DOS_SW_RESET0 ;
 int DOS_VDEC_MCRCC_STALL_CTRL ;
 int GCLK_EN ;
 int GEN_PWR_VDEC_1 ;
 int MDEC_PIC_DC_CTRL ;
 int MPSR ;
 scalar_t__ V4L2_PIX_FMT_NV12M ;
 int amvdec_clear_dos_bits (struct amvdec_core*,int ,int ) ;
 int amvdec_write_dos (struct amvdec_core*,int ,int) ;
 int amvdec_write_dos_bits (struct amvdec_core*,int ,int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int stub1 (struct amvdec_session*) ;
 int usleep_range (int,int) ;
 int vdec_1_load_firmware (struct amvdec_session*,int ) ;
 int vdec_1_stbuf_power_up (struct amvdec_session*) ;
 int vdec_1_stop (struct amvdec_session*) ;

__attribute__((used)) static int vdec_1_start(struct amvdec_session *sess)
{
 int ret;
 struct amvdec_core *core = sess->core;
 struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;


 clk_set_rate(core->vdec_1_clk, 666666666);
 ret = clk_prepare_enable(core->vdec_1_clk);
 if (ret)
  return ret;


 regmap_update_bits(core->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
      GEN_PWR_VDEC_1, 0);
 usleep_range(10, 20);


 amvdec_write_dos(core, DOS_SW_RESET0, 0xfffffffc);
 amvdec_write_dos(core, DOS_SW_RESET0, 0x00000000);

 amvdec_write_dos(core, DOS_GCLK_EN0, 0x3ff);


 amvdec_write_dos(core, DOS_MEM_PD_VDEC, 0);

 regmap_write(core->regmap_ao, AO_RTI_GEN_PWR_ISO0, 0);

 amvdec_write_dos(core, DOS_VDEC_MCRCC_STALL_CTRL, 0);

 amvdec_write_dos(core, GCLK_EN, 0x3ff);
 amvdec_clear_dos_bits(core, MDEC_PIC_DC_CTRL, BIT(31));

 vdec_1_stbuf_power_up(sess);

 ret = vdec_1_load_firmware(sess, sess->fmt_out->firmware_path);
 if (ret)
  goto stop;

 ret = codec_ops->start(sess);
 if (ret)
  goto stop;


 amvdec_write_dos(core, ASSIST_MBOX1_CLR_REG, 1);
 amvdec_write_dos(core, ASSIST_MBOX1_MASK, 1);


 if (sess->pixfmt_cap == V4L2_PIX_FMT_NV12M)
  amvdec_write_dos_bits(core, MDEC_PIC_DC_CTRL, BIT(17));
 else
  amvdec_clear_dos_bits(core, MDEC_PIC_DC_CTRL, BIT(17));


 amvdec_write_dos(core, MPSR, 1);

 usleep_range(10, 20);

 return 0;

stop:
 vdec_1_stop(sess);
 return ret;
}
