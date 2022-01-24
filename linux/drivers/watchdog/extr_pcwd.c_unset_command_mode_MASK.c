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
struct TYPE_2__ {scalar_t__ command_mode; int /*<<< orphan*/  io_lock; scalar_t__ io_addr; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 int /*<<< orphan*/  ISA_COMMAND_TIMEOUT ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 TYPE_1__ pcwd_private ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* Set the card into normal mode */
	FUNC2(&pcwd_private.io_lock);
	FUNC0(0x00, pcwd_private.io_addr + 2);
	FUNC4(ISA_COMMAND_TIMEOUT);
	FUNC3(&pcwd_private.io_lock);

	pcwd_private.command_mode = 0;

	if (debug >= DEBUG)
		FUNC1("command_mode=%d\n", pcwd_private.command_mode);
}