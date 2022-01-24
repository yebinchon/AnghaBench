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
struct TYPE_2__ {int /*<<< orphan*/  fw_ver_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ISA_VERSION_HUNDRETH ; 
 int /*<<< orphan*/  CMD_ISA_VERSION_INTEGER ; 
 int /*<<< orphan*/  CMD_ISA_VERSION_MINOR ; 
 int /*<<< orphan*/  CMD_ISA_VERSION_TENTH ; 
 TYPE_1__ pcwd_private ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(void)
{
	int one, ten, hund, minor;

	FUNC3(pcwd_private.fw_ver_str, "ERROR");

	if (FUNC1()) {
		one = FUNC0(CMD_ISA_VERSION_INTEGER);
		ten = FUNC0(CMD_ISA_VERSION_TENTH);
		hund = FUNC0(CMD_ISA_VERSION_HUNDRETH);
		minor = FUNC0(CMD_ISA_VERSION_MINOR);
		FUNC2(pcwd_private.fw_ver_str, "%c.%c%c%c",
					one, ten, hund, minor);
	}
	FUNC4();

	return;
}