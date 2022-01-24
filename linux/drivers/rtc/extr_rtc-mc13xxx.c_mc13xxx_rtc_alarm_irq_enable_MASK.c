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
struct mc13xxx_rtc {int /*<<< orphan*/  mc13xxx; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13XXX_IRQ_TODA ; 
 struct mc13xxx_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
					unsigned int enabled)
{
	struct mc13xxx_rtc *priv = FUNC0(dev);
	int ret;

	FUNC1(priv->mc13xxx);

	ret = FUNC2(dev, enabled, MC13XXX_IRQ_TODA);

	FUNC3(priv->mc13xxx);

	return ret;
}