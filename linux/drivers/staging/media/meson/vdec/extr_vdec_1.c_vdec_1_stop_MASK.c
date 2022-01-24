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
struct amvdec_session {scalar_t__ priv; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_core {int /*<<< orphan*/  vdec_1_clk; int /*<<< orphan*/  regmap_ao; } ;
struct amvdec_codec_ops {int /*<<< orphan*/  (* stop ) (struct amvdec_session*) ;} ;
struct TYPE_2__ {struct amvdec_codec_ops* codec_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_RTI_GEN_PWR_ISO0 ; 
 int /*<<< orphan*/  AO_RTI_GEN_PWR_SLEEP0 ; 
 int /*<<< orphan*/  ASSIST_MBOX1_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CPSR ; 
 int /*<<< orphan*/  DOS_MEM_PD_VDEC ; 
 int /*<<< orphan*/  DOS_SW_RESET0 ; 
 int /*<<< orphan*/  GEN_PWR_VDEC_1 ; 
 int /*<<< orphan*/  MPSR ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amvdec_session*) ; 

__attribute__((used)) static int FUNC7(struct amvdec_session *sess)
{
	struct amvdec_core *core = sess->core;
	struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;

	FUNC2(core, MPSR, 0);
	FUNC2(core, CPSR, 0);
	FUNC2(core, ASSIST_MBOX1_MASK, 0);

	FUNC2(core, DOS_SW_RESET0, FUNC0(12) | FUNC0(11));
	FUNC2(core, DOS_SW_RESET0, 0);
	FUNC1(core, DOS_SW_RESET0);

	/* enable vdec1 isolation */
	FUNC5(core->regmap_ao, AO_RTI_GEN_PWR_ISO0, 0xc0);
	/* power off vdec1 memories */
	FUNC2(core, DOS_MEM_PD_VDEC, 0xffffffff);
	/* power off vdec1 */
	FUNC4(core->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
			   GEN_PWR_VDEC_1, GEN_PWR_VDEC_1);

	FUNC3(core->vdec_1_clk);

	if (sess->priv)
		codec_ops->stop(sess);

	return 0;
}