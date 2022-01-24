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
struct rtc_device {struct rtc_class_ops const* ops; } ;
struct rtc_class_ops {int dummy; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rtc_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rtc_device*) ; 
 int FUNC2 (struct module*,struct rtc_device*) ; 
 struct rtc_device* FUNC3 (struct device*) ; 

struct rtc_device *FUNC4(struct device *dev,
					    const char *name,
					    const struct rtc_class_ops *ops,
					    struct module *owner)
{
	struct rtc_device *rtc;
	int err;

	rtc = FUNC3(dev);
	if (FUNC1(rtc))
		return rtc;

	rtc->ops = ops;

	err = FUNC2(owner, rtc);
	if (err)
		return FUNC0(err);

	return rtc;
}