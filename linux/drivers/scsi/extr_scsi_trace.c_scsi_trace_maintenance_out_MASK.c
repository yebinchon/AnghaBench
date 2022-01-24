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
#define  MO_CHANGE_ALIASES 133 
#define  MO_MANAGEMENT_PROTOCOL_OUT 132 
#define  MO_SET_IDENTIFYING_INFORMATION 131 
#define  MO_SET_PRIORITY 130 
#define  MO_SET_TARGET_PGS 129 
#define  MO_SET_TIMESTAMP 128 
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
	case MO_SET_IDENTIFYING_INFORMATION:
		cmd = "SET_IDENTIFYING_INFORMATION";
		break;
	case MO_SET_TARGET_PGS:
		cmd = "SET_TARGET_PORT_GROUPS";
		break;
	case MO_CHANGE_ALIASES:
		cmd = "CHANGE_ALIASES";
		break;
	case MO_SET_PRIORITY:
		cmd = "SET_PRIORITY";
		break;
	case MO_SET_TIMESTAMP:
		cmd = "SET_TIMESTAMP";
		break;
	case MO_MANAGEMENT_PROTOCOL_OUT:
		cmd = "MANAGEMENT_PROTOCOL_OUT";
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