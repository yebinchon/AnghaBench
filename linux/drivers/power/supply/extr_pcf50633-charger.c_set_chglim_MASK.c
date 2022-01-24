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
struct pcf50633_mbc {TYPE_2__* pcf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {TYPE_1__* pdata; } ;
struct TYPE_3__ {unsigned long charger_reference_current_ma; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCF50633_REG_MBCC5 ; 
 struct pcf50633_mbc* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct pcf50633_mbc *mbc = FUNC0(dev);
	unsigned long ma;
	unsigned int mbcc5;
	int ret;

	if (!mbc->pcf->pdata->charger_reference_current_ma)
		return -ENODEV;

	ret = FUNC1(buf, 10, &ma);
	if (ret)
		return ret;

	mbcc5 = (ma << 8) / mbc->pcf->pdata->charger_reference_current_ma;
	if (mbcc5 > 255)
		mbcc5 = 255;
	FUNC2(mbc->pcf, PCF50633_REG_MBCC5, mbcc5);

	return count;
}