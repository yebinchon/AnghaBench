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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC2(char *name, int len)
{
	static char tmp[17];
	char *p = tmp;
	FUNC1(tmp, name, len);
	tmp[len] = '\0';
	while (*p && ((p - tmp) < len) && (!FUNC0(*p)))
		p++;
	*p = '\0';
	return tmp;
}