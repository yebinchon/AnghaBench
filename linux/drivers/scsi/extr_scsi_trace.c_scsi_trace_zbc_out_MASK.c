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
typedef  scalar_t__ u64 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
#define  ZO_CLOSE_ZONE 131 
#define  ZO_FINISH_ZONE 130 
#define  ZO_OPEN_ZONE 129 
#define  ZO_RESET_WRITE_POINTER 128 
 scalar_t__ FUNC1 (unsigned char*) ; 
 char* FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,char const*,unsigned long long,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,char*) ; 

__attribute__((used)) static const char *
FUNC6(struct trace_seq *p, unsigned char *cdb, int len)
{
	const char *ret = FUNC2(p), *cmd;
	u64 zone_id;

	switch (FUNC0(cdb)) {
	case ZO_CLOSE_ZONE:
		cmd = "CLOSE_ZONE";
		break;
	case ZO_FINISH_ZONE:
		cmd = "FINISH_ZONE";
		break;
	case ZO_OPEN_ZONE:
		cmd = "OPEN_ZONE";
		break;
	case ZO_RESET_WRITE_POINTER:
		cmd = "RESET_WRITE_POINTER";
		break;
	default:
		FUNC5(p, "UNKNOWN");
		goto out;
	}

	zone_id = FUNC1(&cdb[2]);

	FUNC3(p, "%s zone=%llu all=%u", cmd,
			 (unsigned long long)zone_id, cdb[14] & 1);

out:
	FUNC4(p, 0);

	return ret;
}