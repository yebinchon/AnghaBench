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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int) ; 

void
FUNC2(void *dump_context)
{
	char buf[80];
	int len;

	len = FUNC0(buf, sizeof(buf),
		"  Platform: 2835 (VC master)");
	FUNC1(dump_context, buf, len + 1);
}