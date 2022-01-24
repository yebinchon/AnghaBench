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
struct bfa_iocpf_s {int /*<<< orphan*/  auto_recover; struct bfa_ioc_s* ioc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_sem_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_FAIL ; 
#define  IOCPF_E_DISABLE 131 
#define  IOCPF_E_FAIL 130 
#define  IOCPF_E_SEMLOCKED 129 
#define  IOCPF_E_SEM_ERROR 128 
 int /*<<< orphan*/  IOC_E_HWFAILED ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_iocpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling_sync ; 
 int /*<<< orphan*/  bfa_iocpf_sm_fail ; 
 int /*<<< orphan*/  bfa_iocpf_sm_hwinit ; 
 int /*<<< orphan*/  bfa_iocpf_sm_semwait ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct bfa_iocpf_s *iocpf, enum iocpf_event event)
{
	struct bfa_ioc_s *ioc = iocpf->ioc;

	FUNC9(ioc, event);

	switch (event) {
	case IOCPF_E_SEMLOCKED:
		FUNC4(ioc);
		FUNC2(ioc);
		if (!iocpf->auto_recover) {
			FUNC6(ioc);
			FUNC3(ioc, BFI_IOC_FAIL);
			FUNC10(1, ioc->ioc_regs.ioc_sem_reg);
			FUNC1(iocpf, bfa_iocpf_sm_fail);
		} else {
			if (FUNC5(ioc))
				FUNC1(iocpf, bfa_iocpf_sm_hwinit);
			else {
				FUNC10(1, ioc->ioc_regs.ioc_sem_reg);
				FUNC1(iocpf, bfa_iocpf_sm_semwait);
			}
		}
		break;

	case IOCPF_E_SEM_ERROR:
		FUNC1(iocpf, bfa_iocpf_sm_fail);
		FUNC0(ioc, IOC_E_HWFAILED);
		break;

	case IOCPF_E_DISABLE:
		FUNC7(ioc);
		FUNC1(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FAIL:
		break;

	default:
		FUNC8(ioc, event);
	}
}