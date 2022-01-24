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
typedef  int u8 ;
struct musb {unsigned long a_wait_bcon; int /*<<< orphan*/  lock; int /*<<< orphan*/  mregs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_VBUS ; 
 int MUSB_DEVCTL_VBUS_SHIFT ; 
 struct musb* FUNC0 (struct device*) ; 
 int FUNC1 (struct musb*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct musb	*musb = FUNC0(dev);
	unsigned long	flags;
	unsigned long	val;
	int		vbus;
	u8		devctl;

	FUNC3(dev);
	FUNC5(&musb->lock, flags);
	val = musb->a_wait_bcon;
	vbus = FUNC1(musb);
	if (vbus < 0) {
		/* Use default MUSB method by means of DEVCTL register */
		devctl = FUNC2(musb->mregs, MUSB_DEVCTL);
		if ((devctl & MUSB_DEVCTL_VBUS)
				== (3 << MUSB_DEVCTL_VBUS_SHIFT))
			vbus = 1;
		else
			vbus = 0;
	}
	FUNC6(&musb->lock, flags);
	FUNC4(dev);

	return FUNC7(buf, "Vbus %s, timeout %lu msec\n",
			vbus ? "on" : "off", val);
}