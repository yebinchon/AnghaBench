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
struct amvdec_session {struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOS_GEN_CTRL0 ; 
 int /*<<< orphan*/  VLD_MEM_VIFIFO_BUF_CNTL ; 
 int /*<<< orphan*/  FUNC0 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct amvdec_session *sess)
{
	struct amvdec_core *core = sess->core;

	/* VDEC_1 specific ESPARSER stuff */
	FUNC1(core, DOS_GEN_CTRL0, 0);
	FUNC1(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);
	FUNC0(core, VLD_MEM_VIFIFO_BUF_CNTL, 1);
}