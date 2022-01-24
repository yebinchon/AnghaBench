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
struct property {struct property* value; struct property* name; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  OF_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct property*) ; 
 struct property* FUNC1 (struct property*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (struct property*,int /*<<< orphan*/ ) ; 
 struct property* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct property*,int /*<<< orphan*/ ) ; 

struct property *FUNC5(const struct property *prop, gfp_t allocflags)
{
	struct property *new;

	new = FUNC3(sizeof(*new), allocflags);
	if (!new)
		return NULL;

	/*
	 * NOTE: There is no check for zero length value.
	 * In case of a boolean property, this will allocate a value
	 * of zero bytes. We do this to work around the use
	 * of of_get_property() calls on boolean values.
	 */
	new->name = FUNC2(prop->name, allocflags);
	new->value = FUNC1(prop->value, prop->length, allocflags);
	new->length = prop->length;
	if (!new->name || !new->value)
		goto err_free;

	/* mark the property as dynamic */
	FUNC4(new, OF_DYNAMIC);

	return new;

 err_free:
	FUNC0(new->name);
	FUNC0(new->value);
	FUNC0(new);
	return NULL;
}