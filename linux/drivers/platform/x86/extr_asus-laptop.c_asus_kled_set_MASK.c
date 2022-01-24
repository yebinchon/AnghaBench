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
struct asus_laptop {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  METHOD_KBD_LIGHT_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct asus_laptop *asus, int kblv)
{
	if (kblv > 0)
		kblv = (1 << 7) | (kblv & 0x7F);
	else
		kblv = 0;

	if (FUNC1(asus->handle, METHOD_KBD_LIGHT_SET, kblv)) {
		FUNC0("Keyboard LED display write failed\n");
		return -EINVAL;
	}
	return 0;
}