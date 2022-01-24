#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct amvdec_session {scalar_t__ vififo_paddr; scalar_t__ vififo_size; struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MEM_BUFCTRL_MANUAL ; 
 int MEM_CTRL_EMPTY_EN ; 
 int MEM_CTRL_FILL_EN ; 
 int MEM_FIFO_CNT_BIT ; 
 int MEM_FILL_ON_LEVEL ; 
 int /*<<< orphan*/  POWER_CTL_VLD ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_BUF_CNTL ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_CONTROL ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_CURR_PTR ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_END_PTR ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_START_PTR ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_WP ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_WRAP_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_core*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct amvdec_session *sess)
{
	struct amvdec_core *core = sess->core;

	FUNC2(core, VLD_MEM_VIFIFO_CONTROL, 0);
	FUNC2(core, VLD_MEM_VIFIFO_WRAP_COUNT, 0);
	FUNC2(core, POWER_CTL_VLD, FUNC0(4));

	FUNC2(core, VLD_MEM_VIFIFO_START_PTR, sess->vififo_paddr);
	FUNC2(core, VLD_MEM_VIFIFO_CURR_PTR, sess->vififo_paddr);
	FUNC2(core, VLD_MEM_VIFIFO_END_PTR,
			 sess->vififo_paddr + sess->vififo_size - 8);

	FUNC3(core, VLD_MEM_VIFIFO_CONTROL, 1);
	FUNC1(core, VLD_MEM_VIFIFO_CONTROL, 1);

	FUNC2(core, VLD_MEM_VIFIFO_BUF_CNTL, MEM_BUFCTRL_MANUAL);
	FUNC2(core, VLD_MEM_VIFIFO_WP, sess->vififo_paddr);

	FUNC3(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);
	FUNC1(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);

	FUNC3(core, VLD_MEM_VIFIFO_CONTROL,
			      (0x11 << MEM_FIFO_CNT_BIT) | MEM_FILL_ON_LEVEL |
			      MEM_CTRL_FILL_EN | MEM_CTRL_EMPTY_EN);

	return 0;
}