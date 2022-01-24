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
struct TYPE_4__ {char* udc_name; } ;
struct TYPE_3__ {TYPE_2__ gadget_driver; } ;
struct gadget_info {int /*<<< orphan*/  lock; TYPE_1__ composite; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct gadget_info* FUNC5 (struct config_item*) ; 
 int FUNC6 (struct gadget_info*) ; 
 int FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static ssize_t FUNC8(struct config_item *item,
		const char *page, size_t len)
{
	struct gadget_info *gi = FUNC5(item);
	char *name;
	int ret;

	name = FUNC1(page, GFP_KERNEL);
	if (!name)
		return -ENOMEM;
	if (name[len - 1] == '\n')
		name[len - 1] = '\0';

	FUNC2(&gi->lock);

	if (!FUNC4(name)) {
		ret = FUNC6(gi);
		if (ret)
			goto err;
		FUNC0(name);
	} else {
		if (gi->composite.gadget_driver.udc_name) {
			ret = -EBUSY;
			goto err;
		}
		gi->composite.gadget_driver.udc_name = name;
		ret = FUNC7(&gi->composite.gadget_driver);
		if (ret) {
			gi->composite.gadget_driver.udc_name = NULL;
			goto err;
		}
	}
	FUNC3(&gi->lock);
	return len;
err:
	FUNC0(name);
	FUNC3(&gi->lock);
	return ret;
}