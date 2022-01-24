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
typedef  int /*<<< orphan*/  u16 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(struct trace_seq *p, u8 *cdw10)
{
	const char *ret = FUNC1(p);
	u16 cqid = FUNC0(cdw10);
	u16 qsize = FUNC0(cdw10 + 2);
	u16 cq_flags = FUNC0(cdw10 + 4);
	u16 irq_vector = FUNC0(cdw10 + 6);

	FUNC2(p, "cqid=%u, qsize=%u, cq_flags=0x%x, irq_vector=%u",
			 cqid, qsize, cq_flags, irq_vector);
	FUNC3(p, 0);

	return ret;
}