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
struct bfi_ioc_image_hdr_s {int dummy; } ;
struct bfa_ioc_s {int dummy; } ;
typedef  enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int BFI_IOC_DISABLED ; 
 int BFI_IOC_UNINIT ; 
 int FUNC0 (struct bfa_ioc_s*) ; 
 int FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,int) ; 

__attribute__((used)) static bfa_boolean_t
FUNC5(struct bfa_ioc_s *ioc)
{
	enum bfi_ioc_state alt_fwstate, cur_fwstate;
	struct bfi_ioc_image_hdr_s fwhdr;

	cur_fwstate = FUNC1(ioc);
	FUNC4(ioc, cur_fwstate);
	alt_fwstate = FUNC0(ioc);
	FUNC4(ioc, alt_fwstate);

	/*
	 * Uninit implies this is the only driver as of now.
	 */
	if (cur_fwstate == BFI_IOC_UNINIT)
		return BFA_TRUE;
	/*
	 * Check if another driver with a different firmware is active
	 */
	FUNC3(ioc, &fwhdr);
	if (!FUNC2(ioc, &fwhdr) &&
		alt_fwstate != BFI_IOC_DISABLED) {
		FUNC4(ioc, alt_fwstate);
		return BFA_FALSE;
	}

	return BFA_TRUE;
}