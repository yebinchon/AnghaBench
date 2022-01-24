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
struct TYPE_2__ {scalar_t__ port_tts; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_sync ; 
 int /*<<< orphan*/  STAT_cmd_ready ; 
 int /*<<< orphan*/  SYNTH_IO_EXTENT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int dt_stat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	int status = 0;

	if (FUNC0() == 0xffff) {
		status = -1;
		goto oops;
	}
	FUNC1(CMD_sync);
	if (!FUNC2(STAT_cmd_ready))
		status = -2;
	else if (dt_stat & 0x8000)
		return 0;
	else if (dt_stat == 0x0dec)
		FUNC3("dec_pc at 0x%x, software not loaded\n",
			speakup_info.port_tts);
	status = -3;
oops:	FUNC4(speakup_info.port_tts, SYNTH_IO_EXTENT);
	speakup_info.port_tts = 0;
	return status;
}