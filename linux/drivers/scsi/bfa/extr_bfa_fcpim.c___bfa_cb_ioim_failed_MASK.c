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
struct bfa_ioim_s {int /*<<< orphan*/  dio; TYPE_1__* bfa; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOIM_SM_HCB ; 
 int /*<<< orphan*/  BFI_IOIM_STS_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *cbarg, bfa_boolean_t complete)
{
	struct bfa_ioim_s *ioim = cbarg;

	if (!complete) {
		FUNC1(ioim, BFA_IOIM_SM_HCB);
		return;
	}

	FUNC0(ioim->bfa->bfad, ioim->dio, BFI_IOIM_STS_ABORTED,
			  0, 0, NULL, 0);
}