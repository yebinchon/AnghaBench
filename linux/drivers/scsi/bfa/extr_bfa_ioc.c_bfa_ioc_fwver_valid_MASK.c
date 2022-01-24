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
typedef  scalar_t__ u32 ;
struct bfi_ioc_image_hdr_s {scalar_t__ bootenv; } ;
struct bfa_ioc_s {int dummy; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static bfa_boolean_t
FUNC4(struct bfa_ioc_s *ioc, u32 boot_env)
{
	struct bfi_ioc_image_hdr_s fwhdr;

	FUNC1(ioc, &fwhdr);

	if (FUNC3(fwhdr.bootenv) != boot_env) {
		FUNC2(ioc, fwhdr.bootenv);
		FUNC2(ioc, boot_env);
		return BFA_FALSE;
	}

	return FUNC0(ioc, &fwhdr);
}