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
struct TYPE_2__ {struct device* parent; } ;
struct rtc_device {int id; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rtc_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  devm_rtc_release_device ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct rtc_device**) ; 
 struct rtc_device** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_device**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct rtc_device* FUNC6 () ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  rtc_ida ; 

struct rtc_device *FUNC8(struct device *dev)
{
	struct rtc_device **ptr, *rtc;
	int id, err;

	id = FUNC7(dev);
	if (id < 0)
		return FUNC0(id);

	ptr = FUNC3(devm_rtc_release_device, sizeof(*ptr), GFP_KERNEL);
	if (!ptr) {
		err = -ENOMEM;
		goto exit_ida;
	}

	rtc = FUNC6();
	if (!rtc) {
		err = -ENOMEM;
		goto exit_devres;
	}

	*ptr = rtc;
	FUNC2(dev, ptr);

	rtc->id = id;
	rtc->dev.parent = dev;
	FUNC1(&rtc->dev, "rtc%d", id);

	return rtc;

exit_devres:
	FUNC4(ptr);
exit_ida:
	FUNC5(&rtc_ida, id);
	return FUNC0(err);
}