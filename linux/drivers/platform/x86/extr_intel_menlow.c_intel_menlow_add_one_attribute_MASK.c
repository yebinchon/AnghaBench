#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {void* store; void* show; TYPE_1__ attr; } ;
struct intel_menlow_attribute {int /*<<< orphan*/  node; TYPE_2__ attr; int /*<<< orphan*/  handle; struct device* device; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  intel_menlow_attr_list ; 
 int /*<<< orphan*/  intel_menlow_attr_lock ; 
 int /*<<< orphan*/  FUNC1 (struct intel_menlow_attribute*) ; 
 struct intel_menlow_attribute* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(char *name, umode_t mode, void *show,
					  void *store, struct device *dev,
					  acpi_handle handle)
{
	struct intel_menlow_attribute *attr;
	int result;

	attr = FUNC2(sizeof(struct intel_menlow_attribute), GFP_KERNEL);
	if (!attr)
		return -ENOMEM;

	FUNC6(&attr->attr.attr); /* That is consistent naming :D */
	attr->attr.attr.name = name;
	attr->attr.attr.mode = mode;
	attr->attr.show = show;
	attr->attr.store = store;
	attr->device = dev;
	attr->handle = handle;

	result = FUNC0(dev, &attr->attr);
	if (result) {
		FUNC1(attr);
		return result;
	}

	FUNC4(&intel_menlow_attr_lock);
	FUNC3(&attr->node, &intel_menlow_attr_list);
	FUNC5(&intel_menlow_attr_lock);

	return 0;
}