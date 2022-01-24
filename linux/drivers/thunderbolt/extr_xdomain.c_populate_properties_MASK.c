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
struct tb_xdomain {int /*<<< orphan*/ * vendor_name; int /*<<< orphan*/ * device_name; int /*<<< orphan*/  vendor; int /*<<< orphan*/  device; } ;
struct tb_property_dir {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  text; int /*<<< orphan*/  immediate; } ;
struct tb_property {TYPE_1__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_PROPERTY_TYPE_TEXT ; 
 int /*<<< orphan*/  TB_PROPERTY_TYPE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tb_property* FUNC2 (struct tb_property_dir*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tb_xdomain *xd,
			       struct tb_property_dir *dir)
{
	const struct tb_property *p;

	/* Required properties */
	p = FUNC2(dir, "deviceid", TB_PROPERTY_TYPE_VALUE);
	if (!p)
		return -EINVAL;
	xd->device = p->value.immediate;

	p = FUNC2(dir, "vendorid", TB_PROPERTY_TYPE_VALUE);
	if (!p)
		return -EINVAL;
	xd->vendor = p->value.immediate;

	FUNC0(xd->device_name);
	xd->device_name = NULL;
	FUNC0(xd->vendor_name);
	xd->vendor_name = NULL;

	/* Optional properties */
	p = FUNC2(dir, "deviceid", TB_PROPERTY_TYPE_TEXT);
	if (p)
		xd->device_name = FUNC1(p->value.text, GFP_KERNEL);
	p = FUNC2(dir, "vendorid", TB_PROPERTY_TYPE_TEXT);
	if (p)
		xd->vendor_name = FUNC1(p->value.text, GFP_KERNEL);

	return 0;
}