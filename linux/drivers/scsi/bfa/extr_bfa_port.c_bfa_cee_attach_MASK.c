#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_ioc_s {int /*<<< orphan*/  notify_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  qe; } ;
struct bfa_cee_s {struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; void* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_CEE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_cee_isr ; 
 int /*<<< orphan*/  bfa_cee_notify ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_cee_s*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct bfa_cee_s*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(struct bfa_cee_s *cee, struct bfa_ioc_s *ioc,
		void *dev)
{
	FUNC0(cee == NULL);
	cee->dev = dev;
	cee->ioc = ioc;

	FUNC1(cee->ioc, BFI_MC_CEE, bfa_cee_isr, cee);
	FUNC3(&cee->ioc_notify);
	FUNC2(&cee->ioc_notify, bfa_cee_notify, cee);
	FUNC4(&cee->ioc_notify.qe, &cee->ioc->notify_q);
}