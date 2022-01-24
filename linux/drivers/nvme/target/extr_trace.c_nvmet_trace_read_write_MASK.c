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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC6(struct trace_seq *p, u8 *cdw10)
{
	const char *ret = FUNC3(p);
	u64 slba = FUNC2(cdw10);
	u16 length = FUNC0(cdw10 + 8);
	u16 control = FUNC0(cdw10 + 10);
	u32 dsmgmt = FUNC1(cdw10 + 12);
	u32 reftag = FUNC1(cdw10 +  16);

	FUNC4(p,
			 "slba=%llu, len=%u, ctrl=0x%x, dsmgmt=%u, reftag=%u",
			 slba, length, control, dsmgmt, reftag);
	FUNC5(p, 0);

	return ret;
}