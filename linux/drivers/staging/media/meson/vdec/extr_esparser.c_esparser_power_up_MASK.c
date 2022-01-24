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
struct amvdec_session {int vififo_paddr; int vififo_size; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_ops {int /*<<< orphan*/  (* conf_esparser ) (struct amvdec_session*) ;} ;
struct amvdec_core {int /*<<< orphan*/  esparser_reset; } ;
struct TYPE_2__ {struct amvdec_ops* vdec_ops; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ES_PARSER_START ; 
 int ES_SEARCH ; 
 int ES_START_CODE_MASK ; 
 int ES_START_CODE_PATTERN ; 
 int /*<<< orphan*/  PARSER_CONFIG ; 
 int /*<<< orphan*/  PARSER_CONTROL ; 
 int /*<<< orphan*/  PARSER_ES_CONTROL ; 
 int /*<<< orphan*/  PARSER_INT_ENABLE ; 
 int /*<<< orphan*/  PARSER_INT_HOST_EN_BIT ; 
 int /*<<< orphan*/  PARSER_INT_STATUS ; 
 int /*<<< orphan*/  PARSER_SEARCH_MASK ; 
 int /*<<< orphan*/  PARSER_SEARCH_PATTERN ; 
 int /*<<< orphan*/  PARSER_VIDEO_END_PTR ; 
 int /*<<< orphan*/  PARSER_VIDEO_START_PTR ; 
 int /*<<< orphan*/  PFIFO_RD_PTR ; 
 int /*<<< orphan*/  PFIFO_WR_PTR ; 
 int PS_CFG_MAX_ES_WR_CYCLE_BIT ; 
 int PS_CFG_MAX_FETCH_CYCLE_BIT ; 
 int PS_CFG_PFIFO_EMPTY_CNT_BIT ; 
 int PS_CFG_STARTCODE_WID_24_BIT ; 
 int FUNC1 (struct amvdec_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amvdec_session*) ; 

int FUNC5(struct amvdec_session *sess)
{
	struct amvdec_core *core = sess->core;
	struct amvdec_ops *vdec_ops = sess->fmt_out->vdec_ops;

	FUNC3(core->esparser_reset);
	FUNC2(core, PARSER_CONFIG,
			    (10 << PS_CFG_PFIFO_EMPTY_CNT_BIT) |
			    (1  << PS_CFG_MAX_ES_WR_CYCLE_BIT) |
			    (16 << PS_CFG_MAX_FETCH_CYCLE_BIT));

	FUNC2(core, PFIFO_RD_PTR, 0);
	FUNC2(core, PFIFO_WR_PTR, 0);

	FUNC2(core, PARSER_SEARCH_PATTERN,
			    ES_START_CODE_PATTERN);
	FUNC2(core, PARSER_SEARCH_MASK, ES_START_CODE_MASK);

	FUNC2(core, PARSER_CONFIG,
			    (10 << PS_CFG_PFIFO_EMPTY_CNT_BIT) |
			    (1  << PS_CFG_MAX_ES_WR_CYCLE_BIT) |
			    (16 << PS_CFG_MAX_FETCH_CYCLE_BIT) |
			    (2  << PS_CFG_STARTCODE_WID_24_BIT));

	FUNC2(core, PARSER_CONTROL,
			    (ES_SEARCH | ES_PARSER_START));

	FUNC2(core, PARSER_VIDEO_START_PTR, sess->vififo_paddr);
	FUNC2(core, PARSER_VIDEO_END_PTR,
			    sess->vififo_paddr + sess->vififo_size - 8);
	FUNC2(core, PARSER_ES_CONTROL,
			    FUNC1(core, PARSER_ES_CONTROL) & ~1);

	if (vdec_ops->conf_esparser)
		vdec_ops->conf_esparser(sess);

	FUNC2(core, PARSER_INT_STATUS, 0xffff);
	FUNC2(core, PARSER_INT_ENABLE,
			    FUNC0(PARSER_INT_HOST_EN_BIT));

	return 0;
}