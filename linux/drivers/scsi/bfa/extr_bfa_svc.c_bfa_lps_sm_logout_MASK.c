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
struct bfa_lps_s {int bfa_tag; int /*<<< orphan*/  bfa; } ;
typedef  enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;

/* Variables and functions */
#define  BFA_LPS_SM_DELETE 130 
#define  BFA_LPS_SM_FWRSP 129 
#define  BFA_LPS_SM_OFFLINE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_init ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
	FUNC3(lps->bfa, lps->bfa_tag);
	FUNC3(lps->bfa, event);

	switch (event) {
	case BFA_LPS_SM_FWRSP:
	case BFA_LPS_SM_OFFLINE:
		FUNC2(lps, bfa_lps_sm_init);
		FUNC0(lps);
		break;

	case BFA_LPS_SM_DELETE:
		FUNC2(lps, bfa_lps_sm_init);
		break;

	default:
		FUNC1(lps->bfa, event);
	}
}