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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*,char*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

bool FUNC5(struct device_node *np)
{
	struct device_node *dn;
	int len, err;
	const char *managed;

	/* New binding */
	dn = FUNC0(np, "fixed-link");
	if (dn) {
		FUNC2(dn);
		return true;
	}

	err = FUNC3(np, "managed", &managed);
	if (err == 0 && FUNC4(managed, "auto") != 0)
		return true;

	/* Old binding */
	if (FUNC1(np, "fixed-link", &len) &&
	    len == (5 * sizeof(__be32)))
		return true;

	return false;
}