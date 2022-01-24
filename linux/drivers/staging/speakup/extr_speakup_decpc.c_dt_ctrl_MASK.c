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
typedef  int u_int ;
struct TYPE_2__ {scalar_t__ port_tts; } ;

/* Variables and functions */
 int CMD_control ; 
 int CMD_null ; 
 int STAT_cmd_ready ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(u_int cmd)
{
	int timeout = 10;

	if (!FUNC2(STAT_cmd_ready))
		return -1;
	FUNC3(0, speakup_info.port_tts + 2);
	FUNC3(0, speakup_info.port_tts + 3);
	FUNC0();
	FUNC1(CMD_control | cmd);
	FUNC3(0, speakup_info.port_tts + 6);
	while (FUNC0() & STAT_cmd_ready) {
		FUNC4(20);
		if (--timeout == 0)
			break;
	}
	FUNC1(CMD_null);
	return 0;
}