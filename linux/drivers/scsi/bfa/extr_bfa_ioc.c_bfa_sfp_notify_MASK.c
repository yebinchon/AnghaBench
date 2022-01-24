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
struct bfa_sfp_s {int lock; int state_query_lock; void* status; } ;
typedef  enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;

/* Variables and functions */
#define  BFA_IOC_E_DISABLED 129 
#define  BFA_IOC_E_FAILED 128 
 void* BFA_STATUS_IOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_sfp_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_sfp_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_sfp_s*,int) ; 

__attribute__((used)) static void
FUNC3(void *sfp_arg, enum bfa_ioc_event_e event)
{
	struct bfa_sfp_s *sfp = sfp_arg;

	FUNC2(sfp, event);
	FUNC2(sfp, sfp->lock);
	FUNC2(sfp, sfp->state_query_lock);

	switch (event) {
	case BFA_IOC_E_DISABLED:
	case BFA_IOC_E_FAILED:
		if (sfp->lock) {
			sfp->status = BFA_STATUS_IOC_FAILURE;
			FUNC0(sfp);
		}

		if (sfp->state_query_lock) {
			sfp->status = BFA_STATUS_IOC_FAILURE;
			FUNC1(sfp);
		}
		break;

	default:
		break;
	}
}