#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct amvdec_session {scalar_t__ pixfmt_cap; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_core {int /*<<< orphan*/  regmap_ao; int /*<<< orphan*/  vdec_1_clk; } ;
struct amvdec_codec_ops {int (* start ) (struct amvdec_session*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  firmware_path; struct amvdec_codec_ops* codec_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_RTI_GEN_PWR_ISO0 ; 
 int /*<<< orphan*/  AO_RTI_GEN_PWR_SLEEP0 ; 
 int /*<<< orphan*/  ASSIST_MBOX1_CLR_REG ; 
 int /*<<< orphan*/  ASSIST_MBOX1_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DOS_GCLK_EN0 ; 
 int /*<<< orphan*/  DOS_MEM_PD_VDEC ; 
 int /*<<< orphan*/  DOS_SW_RESET0 ; 
 int /*<<< orphan*/  DOS_VDEC_MCRCC_STALL_CTRL ; 
 int /*<<< orphan*/  GCLK_EN ; 
 int /*<<< orphan*/  GEN_PWR_VDEC_1 ; 
 int /*<<< orphan*/  MDEC_PIC_DC_CTRL ; 
 int /*<<< orphan*/  MPSR ; 
 scalar_t__ V4L2_PIX_FMT_NV12M ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amvdec_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (struct amvdec_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC12 (struct amvdec_session*) ; 

__attribute__((used)) static int FUNC13(struct amvdec_session *sess)
{
	int ret;
	struct amvdec_core *core = sess->core;
	struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;

	/* Configure the vdec clk to the maximum available */
	FUNC5(core->vdec_1_clk, 666666666);
	ret = FUNC4(core->vdec_1_clk);
	if (ret)
		return ret;

	/* Enable power for VDEC_1 */
	FUNC6(core->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
			   GEN_PWR_VDEC_1, 0);
	FUNC9(10, 20);

	/* Reset VDEC1 */
	FUNC2(core, DOS_SW_RESET0, 0xfffffffc);
	FUNC2(core, DOS_SW_RESET0, 0x00000000);

	FUNC2(core, DOS_GCLK_EN0, 0x3ff);

	/* enable VDEC Memories */
	FUNC2(core, DOS_MEM_PD_VDEC, 0);
	/* Remove VDEC1 Isolation */
	FUNC7(core->regmap_ao, AO_RTI_GEN_PWR_ISO0, 0);
	/* Reset DOS top registers */
	FUNC2(core, DOS_VDEC_MCRCC_STALL_CTRL, 0);

	FUNC2(core, GCLK_EN, 0x3ff);
	FUNC1(core, MDEC_PIC_DC_CTRL, FUNC0(31));

	FUNC11(sess);

	ret = FUNC10(sess, sess->fmt_out->firmware_path);
	if (ret)
		goto stop;

	ret = codec_ops->start(sess);
	if (ret)
		goto stop;

	/* Enable IRQ */
	FUNC2(core, ASSIST_MBOX1_CLR_REG, 1);
	FUNC2(core, ASSIST_MBOX1_MASK, 1);

	/* Enable 2-plane output */
	if (sess->pixfmt_cap == V4L2_PIX_FMT_NV12M)
		FUNC3(core, MDEC_PIC_DC_CTRL, FUNC0(17));
	else
		FUNC1(core, MDEC_PIC_DC_CTRL, FUNC0(17));

	/* Enable firmware processor */
	FUNC2(core, MPSR, 1);
	/* Let the firmware settle */
	FUNC9(10, 20);

	return 0;

stop:
	FUNC12(sess);
	return ret;
}