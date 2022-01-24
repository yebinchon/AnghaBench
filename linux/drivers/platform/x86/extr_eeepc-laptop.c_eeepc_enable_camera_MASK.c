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
struct eeepc_laptop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_CAMERA ; 
 scalar_t__ FUNC0 (struct eeepc_laptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eeepc_laptop*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct eeepc_laptop *eeepc)
{
	/*
	 * If the following call to set_acpi() fails, it's because there's no
	 * camera so we can ignore the error.
	 */
	if (FUNC0(eeepc, CM_ASL_CAMERA) == 0)
		FUNC1(eeepc, CM_ASL_CAMERA, 1);
}