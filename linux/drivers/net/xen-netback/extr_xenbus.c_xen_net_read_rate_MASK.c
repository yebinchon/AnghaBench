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
struct xenbus_device {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long FUNC3 (char*,char**,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xenbus_device *dev,
			      unsigned long *bytes, unsigned long *usec)
{
	char *s, *e;
	unsigned long b, u;
	char *ratestr;

	/* Default to unlimited bandwidth. */
	*bytes = ~0UL;
	*usec = 0;

	ratestr = FUNC4(XBT_NIL, dev->nodename, "rate", NULL);
	if (FUNC0(ratestr))
		return;

	s = ratestr;
	b = FUNC3(s, &e, 10);
	if ((s == e) || (*e != ','))
		goto fail;

	s = e + 1;
	u = FUNC3(s, &e, 10);
	if ((s == e) || (*e != '\0'))
		goto fail;

	*bytes = b;
	*usec = u;

	FUNC1(ratestr);
	return;

 fail:
	FUNC2("Failed to parse network rate limit. Traffic unlimited.\n");
	FUNC1(ratestr);
}