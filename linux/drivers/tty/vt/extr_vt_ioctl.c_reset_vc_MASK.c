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
struct TYPE_2__ {scalar_t__ frsig; scalar_t__ acqsig; scalar_t__ relsig; scalar_t__ waitv; int /*<<< orphan*/  mode; } ;
struct vc_data {int vt_newvt; int /*<<< orphan*/ * vt_pid; TYPE_1__ vt_mode; int /*<<< orphan*/  vc_num; int /*<<< orphan*/  vc_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  KD_TEXT ; 
 int /*<<< orphan*/  VT_AUTO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct vc_data *vc)
{
	vc->vc_mode = KD_TEXT;
	FUNC3(vc->vc_num);
	vc->vt_mode.mode = VT_AUTO;
	vc->vt_mode.waitv = 0;
	vc->vt_mode.relsig = 0;
	vc->vt_mode.acqsig = 0;
	vc->vt_mode.frsig = 0;
	FUNC1(vc->vt_pid);
	vc->vt_pid = NULL;
	vc->vt_newvt = -1;
	if (!FUNC0())    /* Via keyboard.c:SAK() - akpm */
		FUNC2(vc);
}