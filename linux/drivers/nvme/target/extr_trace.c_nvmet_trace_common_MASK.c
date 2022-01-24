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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC3(struct trace_seq *p, u8 *cdw10)
{
	const char *ret = FUNC0(p);

	FUNC1(p, "cdw10=%*ph", 24, cdw10);
	FUNC2(p, 0);

	return ret;
}