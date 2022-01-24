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
struct property {char* value; int length; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int ENODATA ; 
 struct property* FUNC0 (struct device_node const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*,int) ; 

int FUNC4(const struct device_node *np, const char *propname,
			     const char *string)
{
	const struct property *prop = FUNC0(np, propname, NULL);
	size_t l;
	int i;
	const char *p, *end;

	if (!prop)
		return -EINVAL;
	if (!prop->value)
		return -ENODATA;

	p = prop->value;
	end = p + prop->length;

	for (i = 0; p < end; i++, p += l) {
		l = FUNC3(p, end - p) + 1;
		if (p + l > end)
			return -EILSEQ;
		FUNC1("comparing %s with %s\n", string, p);
		if (FUNC2(string, p) == 0)
			return i; /* Found it; return index */
	}
	return -ENODATA;
}