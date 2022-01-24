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
struct snvs_rtc_data {scalar_t__ offset; int /*<<< orphan*/  regmap; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNVS_LPCR ; 
 int /*<<< orphan*/  SNVS_LPCR_LPTA_EN ; 
 scalar_t__ SNVS_LPSR ; 
 unsigned long SNVS_LPSR_LPTA ; 
 scalar_t__ SNVS_LPTAR ; 
 struct snvs_rtc_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snvs_rtc_data*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct snvs_rtc_data *data = FUNC0(dev);
	unsigned long time = FUNC3(&alrm->time);
	int ret;

	FUNC1(data->regmap, data->offset + SNVS_LPCR, SNVS_LPCR_LPTA_EN, 0);
	ret = FUNC4(data);
	if (ret)
		return ret;
	FUNC2(data->regmap, data->offset + SNVS_LPTAR, time);

	/* Clear alarm interrupt status bit */
	FUNC2(data->regmap, data->offset + SNVS_LPSR, SNVS_LPSR_LPTA);

	return FUNC5(dev, alrm->enabled);
}