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
struct bfa_iocpf_s {struct bfa_ioc_s* ioc; } ;
struct bfa_ioc_s {int dummy; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_FAIL ; 
#define  IOCPF_E_FAIL 131 
#define  IOCPF_E_FWRSP_DISABLE 130 
#define  IOCPF_E_FWRSP_ENABLE 129 
#define  IOCPF_E_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling_sync ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_iocpf_s *iocpf, enum iocpf_event event)
{
	struct bfa_ioc_s *ioc = iocpf->ioc;

	FUNC4(ioc, event);

	switch (event) {
	case IOCPF_E_FWRSP_DISABLE:
		FUNC2(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FAIL:
		FUNC2(ioc);
		/* fall through */

	case IOCPF_E_TIMEOUT:
		FUNC1(ioc, BFI_IOC_FAIL);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FWRSP_ENABLE:
		break;

	default:
		FUNC3(ioc, event);
	}
}