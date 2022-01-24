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
struct rfkill {int dummy; } ;
struct calling_interface_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CLASS_INFO ; 
 int /*<<< orphan*/  SELECT_RFKILL ; 
 int /*<<< orphan*/  FUNC1 (struct calling_interface_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfkill*,int) ; 

__attribute__((used)) static void FUNC5(struct rfkill *rfkill, int radio,
					int status)
{
	if (status & FUNC0(0)) {
		/* Has hw-switch, sync sw_state to BIOS */
		struct calling_interface_buffer buffer;
		int block = FUNC3(rfkill);
		FUNC1(&buffer,
				   1 | (radio << 8) | (block << 16), 0, 0, 0);
		FUNC2(&buffer, CLASS_INFO, SELECT_RFKILL);
	} else {
		/* No hw-switch, sync BIOS state to sw_state */
		FUNC4(rfkill, !!(status & FUNC0(radio + 16)));
	}
}