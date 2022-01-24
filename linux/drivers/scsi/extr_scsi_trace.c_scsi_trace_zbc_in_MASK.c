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
typedef  unsigned char u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
#define  ZI_REPORT_ZONES 128 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 char* FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*,char const*,unsigned long long,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*,char*) ; 

__attribute__((used)) static const char *
FUNC7(struct trace_seq *p, unsigned char *cdb, int len)
{
	const char *ret = FUNC3(p), *cmd;
	u64 zone_id;
	u32 alloc_len;
	u8 options;

	switch (FUNC0(cdb)) {
	case ZI_REPORT_ZONES:
		cmd = "REPORT_ZONES";
		break;
	default:
		FUNC6(p, "UNKNOWN");
		goto out;
	}

	zone_id = FUNC2(&cdb[2]);
	alloc_len = FUNC1(&cdb[10]);
	options = cdb[14] & 0x3f;

	FUNC4(p, "%s zone=%llu alloc_len=%u options=%u partial=%u",
			 cmd, (unsigned long long)zone_id, alloc_len,
			 options, (cdb[14] >> 7) & 1);

out:
	FUNC5(p, 0);

	return ret;
}