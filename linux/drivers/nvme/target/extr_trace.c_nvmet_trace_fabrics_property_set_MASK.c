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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC5(struct trace_seq *p,
		u8 *spc)
{
	const char *ret = FUNC2(p);
	u8 attrib = spc[0];
	u32 ofst = FUNC0(spc + 4);
	u64 value = FUNC1(spc + 8);

	FUNC3(p, "attrib=%u, ofst=0x%x, value=0x%llx",
			 attrib, ofst, value);
	FUNC4(p, 0);
	return ret;
}