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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 char* FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(struct trace_seq *p,
						 u8 *cdw10)
{
	const char *ret = FUNC1(p);
	u8 fid = cdw10[0];
	u8 sel = cdw10[1] & 0x7;
	u32 cdw11 = FUNC0(cdw10 + 4);

	FUNC2(p, "fid=0x%x sel=0x%x cdw11=0x%x", fid, sel, cdw11);
	FUNC3(p, 0);

	return ret;
}