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
struct telemetry_evtlog {int /*<<< orphan*/  telem_evtlog; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TELEM_IOSS ; 
 int TELEM_MAX_OS_ALLOCATED_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const**,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct telemetry_evtlog*,int) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *unused)
{
	struct telemetry_evtlog evtlog[TELEM_MAX_OS_ALLOCATED_EVENTS];
	const char *name[TELEM_MAX_OS_ALLOCATED_EVENTS];
	int index, ret, err;

	ret = FUNC3(TELEM_IOSS, evtlog,
				      TELEM_MAX_OS_ALLOCATED_EVENTS);
	if (ret < 0)
		return ret;

	err = FUNC2(TELEM_IOSS, name,
				    TELEM_MAX_OS_ALLOCATED_EVENTS);
	if (err < 0)
		return err;

	FUNC1(s, "--------------------------------------\n");
	FUNC1(s, "\tI0SS TELEMETRY EVENTLOG\n");
	FUNC1(s, "--------------------------------------\n");
	for (index = 0; index < ret; index++) {
		FUNC0(s, "%-32s 0x%llx\n",
			   name[index], evtlog[index].telem_evtlog);
	}

	return 0;
}