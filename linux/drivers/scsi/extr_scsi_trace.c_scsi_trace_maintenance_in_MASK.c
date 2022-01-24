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
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
#define  MI_MANAGEMENT_PROTOCOL_IN 135 
#define  MI_REPORT_ALIASES 134 
#define  MI_REPORT_IDENTIFYING_INFORMATION 133 
#define  MI_REPORT_PRIORITY 132 
#define  MI_REPORT_SUPPORTED_OPERATION_CODES 131 
#define  MI_REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS 130 
#define  MI_REPORT_TARGET_PGS 129 
#define  MI_REPORT_TIMESTAMP 128 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 char* FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,char*) ; 

__attribute__((used)) static const char *
FUNC6(struct trace_seq *p, unsigned char *cdb, int len)
{
	const char *ret = FUNC2(p), *cmd;
	u32 alloc_len;

	switch (FUNC0(cdb)) {
	case MI_REPORT_IDENTIFYING_INFORMATION:
		cmd = "REPORT_IDENTIFYING_INFORMATION";
		break;
	case MI_REPORT_TARGET_PGS:
		cmd = "REPORT_TARGET_PORT_GROUPS";
		break;
	case MI_REPORT_ALIASES:
		cmd = "REPORT_ALIASES";
		break;
	case MI_REPORT_SUPPORTED_OPERATION_CODES:
		cmd = "REPORT_SUPPORTED_OPERATION_CODES";
		break;
	case MI_REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS:
		cmd = "REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS";
		break;
	case MI_REPORT_PRIORITY:
		cmd = "REPORT_PRIORITY";
		break;
	case MI_REPORT_TIMESTAMP:
		cmd = "REPORT_TIMESTAMP";
		break;
	case MI_MANAGEMENT_PROTOCOL_IN:
		cmd = "MANAGEMENT_PROTOCOL_IN";
		break;
	default:
		FUNC5(p, "UNKNOWN");
		goto out;
	}

	alloc_len = FUNC1(&cdb[6]);

	FUNC3(p, "%s alloc_len=%u", cmd, alloc_len);

out:
	FUNC4(p, 0);

	return ret;
}