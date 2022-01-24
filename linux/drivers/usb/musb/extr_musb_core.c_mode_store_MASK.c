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
struct musb {int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MUSB_HOST ; 
 int /*<<< orphan*/  MUSB_OTG ; 
 int /*<<< orphan*/  MUSB_PERIPHERAL ; 
 struct musb* FUNC0 (struct device*) ; 
 int FUNC1 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t n)
{
	struct musb	*musb = FUNC0(dev);
	unsigned long	flags;
	int		status;

	FUNC2(&musb->lock, flags);
	if (FUNC4(buf, "host"))
		status = FUNC1(musb, MUSB_HOST);
	else if (FUNC4(buf, "peripheral"))
		status = FUNC1(musb, MUSB_PERIPHERAL);
	else if (FUNC4(buf, "otg"))
		status = FUNC1(musb, MUSB_OTG);
	else
		status = -EINVAL;
	FUNC3(&musb->lock, flags);

	return (status == 0) ? n : status;
}