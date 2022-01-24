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
struct bfa_tskim_s {int /*<<< orphan*/  dtsk; TYPE_1__* bfa; int /*<<< orphan*/  itnim; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TSKIM_SM_HCB ; 
 int /*<<< orphan*/  BFI_TSKIM_STS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tm_failures ; 

__attribute__((used)) static void
FUNC3(void *cbarg, bfa_boolean_t complete)
{
	struct bfa_tskim_s *tskim = cbarg;

	if (!complete) {
		FUNC1(tskim, BFA_TSKIM_SM_HCB);
		return;
	}

	FUNC2(tskim->itnim, tm_failures);
	FUNC0(tskim->bfa->bfad, tskim->dtsk,
				BFI_TSKIM_STS_FAILED);
}