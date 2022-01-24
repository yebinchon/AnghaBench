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
struct bfad_s {int /*<<< orphan*/  hal_tmo; } ;
typedef  enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;

/* Variables and functions */
#define  BFAD_E_EXIT_COMP 130 
 int /*<<< orphan*/  BFAD_E_FCS_EXIT_COMP ; 
#define  BFAD_E_INIT_SUCCESS 129 
#define  BFAD_E_STOP 128 
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfad_s*) ; 
 int /*<<< orphan*/  bfad_sm_fcs_exit ; 
 int /*<<< orphan*/  bfad_sm_operational ; 
 int /*<<< orphan*/  bfad_sm_uninit ; 
 int FUNC5 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct bfad_s *bfad, enum bfad_sm_event event)
{
	int	retval;

	FUNC3(bfad, event);

	switch (event) {
	case BFAD_E_INIT_SUCCESS:
		retval = FUNC5(bfad);
		if (retval != BFA_STATUS_OK)
			break;
		FUNC2(bfad, bfad_sm_operational);
		break;

	case BFAD_E_STOP:
		FUNC2(bfad, bfad_sm_fcs_exit);
		FUNC1(bfad, BFAD_E_FCS_EXIT_COMP);
		break;

	case BFAD_E_EXIT_COMP:
		FUNC2(bfad, bfad_sm_uninit);
		FUNC4(bfad);
		FUNC6(&bfad->hal_tmo);
		break;

	default:
		FUNC0(bfad, event);
	}
}