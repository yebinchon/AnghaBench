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
struct bfa_ioc_s {int /*<<< orphan*/  iocpf; int /*<<< orphan*/  bfa; TYPE_1__* cbfn; } ;
typedef  enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_IOC_FAILURE ; 
 int /*<<< orphan*/  IOCPF_E_INITFAIL ; 
 int /*<<< orphan*/  IOCPF_E_STOP ; 
#define  IOC_E_DETACH 134 
#define  IOC_E_DISABLE 133 
#define  IOC_E_ENABLE 132 
#define  IOC_E_ENABLED 131 
#define  IOC_E_HWERROR 130 
#define  IOC_E_HWFAILED 129 
#define  IOC_E_PFFAILED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_ioc_sm_disabling ; 
 int /*<<< orphan*/  bfa_ioc_sm_fail ; 
 int /*<<< orphan*/  bfa_ioc_sm_getattr ; 
 int /*<<< orphan*/  bfa_ioc_sm_hwfail ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioc_s *ioc, enum ioc_event event)
{
	FUNC3(ioc, event);

	switch (event) {
	case IOC_E_ENABLED:
		FUNC1(ioc, bfa_ioc_sm_getattr);
		break;

	case IOC_E_PFFAILED:
	case IOC_E_HWERROR:
		/*
		 * Initialization retry failed.
		 */
		ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
		FUNC1(ioc, bfa_ioc_sm_fail);
		if (event != IOC_E_PFFAILED)
			FUNC0(&ioc->iocpf, IOCPF_E_INITFAIL);
		break;

	case IOC_E_HWFAILED:
		ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
		FUNC1(ioc, bfa_ioc_sm_hwfail);
		break;

	case IOC_E_ENABLE:
		break;

	case IOC_E_DISABLE:
		FUNC1(ioc, bfa_ioc_sm_disabling);
		break;

	case IOC_E_DETACH:
		FUNC1(ioc, bfa_ioc_sm_uninit);
		FUNC0(&ioc->iocpf, IOCPF_E_STOP);
		break;

	default:
		FUNC2(ioc, event);
	}
}