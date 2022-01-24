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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct pcf85063 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  PCF85063_AEN ; 
 int PCF85063_CTRL2_AF ; 
 int PCF85063_CTRL2_AIE ; 
 int /*<<< orphan*/  PCF85063_REG_ALM_S ; 
 int /*<<< orphan*/  PCF85063_REG_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcf85063* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pcf85063 *pcf85063 = FUNC1(dev);
	u8 buf[5];
	int ret;

	buf[0] = FUNC0(alrm->time.tm_sec);
	buf[1] = FUNC0(alrm->time.tm_min);
	buf[2] = FUNC0(alrm->time.tm_hour);
	buf[3] = FUNC0(alrm->time.tm_mday);
	buf[4] = PCF85063_AEN; /* Do not match on week day */

	ret = FUNC3(pcf85063->regmap, PCF85063_REG_CTRL2,
				 PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF, 0);
	if (ret)
		return ret;

	ret = FUNC2(pcf85063->regmap, PCF85063_REG_ALM_S,
				buf, sizeof(buf));
	if (ret)
		return ret;

	return FUNC3(pcf85063->regmap, PCF85063_REG_CTRL2,
				  PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF,
				  alrm->enabled ? PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF : PCF85063_CTRL2_AF);
}