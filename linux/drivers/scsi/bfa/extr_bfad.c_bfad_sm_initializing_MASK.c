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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/ * bfad_tsk; } ;
typedef  enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;

/* Variables and functions */
#define  BFAD_E_HAL_INIT_FAILED 130 
#define  BFAD_E_INIT_FAILED 129 
#define  BFAD_E_INIT_SUCCESS 128 
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  bfad_sm_failed ; 
 int /*<<< orphan*/  bfad_sm_operational ; 
 int /*<<< orphan*/  bfad_sm_uninit ; 
 int FUNC3 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct bfad_s *bfad, enum bfad_sm_event event)
{
	int	retval;
	unsigned long	flags;

	FUNC2(bfad, event);

	switch (event) {
	case BFAD_E_INIT_SUCCESS:
		FUNC4(bfad->bfad_tsk);
		FUNC5(&bfad->bfad_lock, flags);
		bfad->bfad_tsk = NULL;
		FUNC6(&bfad->bfad_lock, flags);

		retval = FUNC3(bfad);
		if (retval != BFA_STATUS_OK) {
			FUNC1(bfad, bfad_sm_failed);
			break;
		}
		FUNC1(bfad, bfad_sm_operational);
		break;

	case BFAD_E_INIT_FAILED:
		FUNC1(bfad, bfad_sm_uninit);
		FUNC4(bfad->bfad_tsk);
		FUNC5(&bfad->bfad_lock, flags);
		bfad->bfad_tsk = NULL;
		FUNC6(&bfad->bfad_lock, flags);
		break;

	case BFAD_E_HAL_INIT_FAILED:
		FUNC1(bfad, bfad_sm_failed);
		break;
	default:
		FUNC0(bfad, event);
	}
}