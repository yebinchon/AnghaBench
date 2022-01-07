
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amvdec_session {scalar_t__ priv; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_core {int vdec_1_clk; int regmap_ao; } ;
struct amvdec_codec_ops {int (* stop ) (struct amvdec_session*) ;} ;
struct TYPE_2__ {struct amvdec_codec_ops* codec_ops; } ;


 int AO_RTI_GEN_PWR_ISO0 ;
 int AO_RTI_GEN_PWR_SLEEP0 ;
 int ASSIST_MBOX1_MASK ;
 int BIT (int) ;
 int CPSR ;
 int DOS_MEM_PD_VDEC ;
 int DOS_SW_RESET0 ;
 int GEN_PWR_VDEC_1 ;
 int MPSR ;
 int amvdec_read_dos (struct amvdec_core*,int ) ;
 int amvdec_write_dos (struct amvdec_core*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int stub1 (struct amvdec_session*) ;

__attribute__((used)) static int vdec_1_stop(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;
 struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;

 amvdec_write_dos(core, MPSR, 0);
 amvdec_write_dos(core, CPSR, 0);
 amvdec_write_dos(core, ASSIST_MBOX1_MASK, 0);

 amvdec_write_dos(core, DOS_SW_RESET0, BIT(12) | BIT(11));
 amvdec_write_dos(core, DOS_SW_RESET0, 0);
 amvdec_read_dos(core, DOS_SW_RESET0);


 regmap_write(core->regmap_ao, AO_RTI_GEN_PWR_ISO0, 0xc0);

 amvdec_write_dos(core, DOS_MEM_PD_VDEC, 0xffffffff);

 regmap_update_bits(core->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
      GEN_PWR_VDEC_1, GEN_PWR_VDEC_1);

 clk_disable_unprepare(core->vdec_1_clk);

 if (sess->priv)
  codec_ops->stop(sess);

 return 0;
}
