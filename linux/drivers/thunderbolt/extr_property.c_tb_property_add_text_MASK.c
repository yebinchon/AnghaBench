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
struct TYPE_2__ {int /*<<< orphan*/  text; } ;
struct tb_property {size_t length; int /*<<< orphan*/  list; TYPE_1__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_PROPERTY_TYPE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (struct tb_property*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 struct tb_property* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int FUNC8(struct tb_property_dir *parent, const char *key,
			 const char *text)
{
	/* Need to pad to dword boundary */
	size_t size = FUNC3(FUNC5(text) + 1, 4);
	struct tb_property *property;

	if (!FUNC7(key))
		return -EINVAL;

	property = FUNC6(key, TB_PROPERTY_TYPE_TEXT);
	if (!property)
		return -ENOMEM;

	property->length = size / 4;
	property->value.text = FUNC1(size, GFP_KERNEL);
	if (!property->value.text) {
		FUNC0(property);
		return -ENOMEM;
	}

	FUNC4(property->value.text, text);

	FUNC2(&property->list, &parent->properties);
	return 0;
}