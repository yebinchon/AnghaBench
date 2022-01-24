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
typedef  int /*<<< orphan*/  u32 ;
struct xen_platform_op {int dummy; } ;
typedef  int /*<<< orphan*/  efi_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_UNSUPPORTED ; 
 scalar_t__ FUNC0 (struct xen_platform_op*) ; 
 struct xen_platform_op FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (struct xen_platform_op) ; 
 int /*<<< orphan*/  get_next_high_monotonic_count ; 

__attribute__((used)) static efi_status_t FUNC3(u32 *count)
{
	struct xen_platform_op op = FUNC1(get_next_high_monotonic_count);

	if (FUNC0(&op) < 0)
		return EFI_UNSUPPORTED;

	*count = FUNC2(op).misc;

	return FUNC2(op).status;
}