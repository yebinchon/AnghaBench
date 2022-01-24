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
struct property {char* value; scalar_t__ length; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int ENODATA ; 
 struct property* FUNC0 (struct device_node const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 

int FUNC2(const struct device_node *np, const char *propname,
				const char **out_string)
{
	const struct property *prop = FUNC0(np, propname, NULL);
	if (!prop)
		return -EINVAL;
	if (!prop->value)
		return -ENODATA;
	if (FUNC1(prop->value, prop->length) >= prop->length)
		return -EILSEQ;
	*out_string = prop->value;
	return 0;
}