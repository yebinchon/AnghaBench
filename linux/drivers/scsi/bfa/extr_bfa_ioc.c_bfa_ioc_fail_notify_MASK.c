#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfad_s {int dummy; } ;
struct bfa_ioc_s {TYPE_2__* bfa; TYPE_1__* cbfn; } ;
struct TYPE_4__ {scalar_t__ bfad; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hbfail_cbfn ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_AEN_HBFAIL ; 
 int /*<<< orphan*/  BFA_IOC_E_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc_s *ioc)
{
	struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;

	/*
	 * Notify driver and common modules registered for notification.
	 */
	ioc->cbfn->hbfail_cbfn(ioc->bfa);
	FUNC3(ioc, BFA_IOC_E_FAILED);

	FUNC2(ioc);

	FUNC0(KERN_CRIT, bfad, bfa_log_level,
		"Heart Beat of IOC has failed\n");
	FUNC1(ioc, BFA_IOC_AEN_HBFAIL);

}