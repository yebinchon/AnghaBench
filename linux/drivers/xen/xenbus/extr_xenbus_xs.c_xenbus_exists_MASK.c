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
struct xenbus_transaction {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (struct xenbus_transaction,char const*,char const*,int*) ; 

int FUNC3(struct xenbus_transaction t,
		  const char *dir, const char *node)
{
	char **d;
	int dir_n;

	d = FUNC2(t, dir, node, &dir_n);
	if (FUNC0(d))
		return 0;
	FUNC1(d);
	return 1;
}