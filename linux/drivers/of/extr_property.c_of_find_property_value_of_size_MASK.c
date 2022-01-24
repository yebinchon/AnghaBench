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
typedef  size_t u32 ;
struct property {void* value; size_t length; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct property* FUNC1 (struct device_node const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(const struct device_node *np,
			const char *propname, u32 min, u32 max, size_t *len)
{
	struct property *prop = FUNC1(np, propname, NULL);

	if (!prop)
		return FUNC0(-EINVAL);
	if (!prop->value)
		return FUNC0(-ENODATA);
	if (prop->length < min)
		return FUNC0(-EOVERFLOW);
	if (max && prop->length > max)
		return FUNC0(-EOVERFLOW);

	if (len)
		*len = prop->length;

	return prop->value;
}