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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 scalar_t__ base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ reboot_offset ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this,
				unsigned long mode, void *cmd)
{
	FUNC1(0xdeadbeef, base + reboot_offset);

	while (1)
		FUNC0();

	return NOTIFY_DONE;
}