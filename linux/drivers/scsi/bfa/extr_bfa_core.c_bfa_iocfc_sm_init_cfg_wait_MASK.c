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
struct bfa_iocfc_s {int /*<<< orphan*/  bfa; } ;
typedef  enum iocfc_event { ____Placeholder_iocfc_event } iocfc_event ;

/* Variables and functions */
#define  IOCFC_E_CFG_DONE 131 
#define  IOCFC_E_DISABLE 130 
#define  IOCFC_E_IOC_FAILED 129 
#define  IOCFC_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocfc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_iocfc_sm_disabling ; 
 int /*<<< orphan*/  bfa_iocfc_sm_init_cfg_done ; 
 int /*<<< orphan*/  bfa_iocfc_sm_init_failed ; 
 int /*<<< orphan*/  bfa_iocfc_sm_stopping ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bfa_iocfc_s *iocfc, enum iocfc_event event)
{
	FUNC2(iocfc->bfa, event);

	switch (event) {
	case IOCFC_E_CFG_DONE:
		FUNC0(iocfc, bfa_iocfc_sm_init_cfg_done);
		break;

	case IOCFC_E_DISABLE:
		FUNC0(iocfc, bfa_iocfc_sm_disabling);
		break;

	case IOCFC_E_STOP:
		FUNC0(iocfc, bfa_iocfc_sm_stopping);
		break;

	case IOCFC_E_IOC_FAILED:
		FUNC0(iocfc, bfa_iocfc_sm_init_failed);
		break;
	default:
		FUNC1(iocfc->bfa, event);
		break;
	}
}