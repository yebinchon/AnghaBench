#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tb_property_dir {int /*<<< orphan*/  properties; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct tb_property {size_t length; int /*<<< orphan*/  list; TYPE_1__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_PROPERTY_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct tb_property*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 
 size_t FUNC4 (size_t,int) ; 
 struct tb_property* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(struct tb_property_dir *parent, const char *key,
			 const void *buf, size_t buflen)
{
	/* Need to pad to dword boundary */
	size_t size = FUNC4(buflen, 4);
	struct tb_property *property;

	if (!FUNC6(key))
		return -EINVAL;

	property = FUNC5(key, TB_PROPERTY_TYPE_DATA);
	if (!property)
		return -ENOMEM;

	property->length = size / 4;
	property->value.data = FUNC1(size, GFP_KERNEL);
	if (!property->value.data) {
		FUNC0(property);
		return -ENOMEM;
	}

	FUNC3(property->value.data, buf, buflen);

	FUNC2(&property->list, &parent->properties);
	return 0;
}