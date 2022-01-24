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
struct xenbus_device {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int ENOENT ; 
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct xenbus_device *dev, u8 mac[])
{
	char *s, *e, *macstr;
	int i;

	macstr = s = FUNC4(XBT_NIL, dev->nodename, "mac", NULL);
	if (FUNC0(macstr))
		return FUNC1(macstr);

	for (i = 0; i < ETH_ALEN; i++) {
		mac[i] = FUNC3(s, &e, 16);
		if ((s == e) || (*e != ((i == ETH_ALEN-1) ? '\0' : ':'))) {
			FUNC2(macstr);
			return -ENOENT;
		}
		s = e+1;
	}

	FUNC2(macstr);
	return 0;
}