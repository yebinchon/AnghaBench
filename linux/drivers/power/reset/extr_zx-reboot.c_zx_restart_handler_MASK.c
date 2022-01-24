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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ pcu_base ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
			      unsigned long mode, void *cmd)
{
	FUNC2(1, base + 0xb0);
	FUNC2(1, pcu_base + 0x34);

	FUNC0(50);
	FUNC1("Unable to restart system\n");

	return NOTIFY_DONE;
}