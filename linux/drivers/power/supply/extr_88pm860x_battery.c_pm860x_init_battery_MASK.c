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
struct pm860x_battery_info {scalar_t__ temp_type; int present; int start_soc; char* last_capacity; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BAT_WU_LOG ; 
 int CC6_BAT_DET_GPADC1 ; 
 int CCNT_AVG_SEL ; 
 int GPBIAS2_GPADC1_SET ; 
 int GPMISC1_GPADC_EN ; 
 int MEAS1_GP1 ; 
 int MEAS1_TINT ; 
 int MEAS3_BAT_DET ; 
 int MEAS3_CC ; 
 int MEAS3_IBAT ; 
 int /*<<< orphan*/  OCV_MODE_ACTIVE ; 
 int /*<<< orphan*/  PM8607_CCNT ; 
 int /*<<< orphan*/  PM8607_CHG_CTRL6 ; 
 int /*<<< orphan*/  PM8607_GPADC_MISC1 ; 
 int /*<<< orphan*/  PM8607_GP_BIAS2 ; 
 int /*<<< orphan*/  PM8607_MEAS_EN1 ; 
 int /*<<< orphan*/  PM8607_MEAS_EN3 ; 
 int /*<<< orphan*/  PM8607_MEAS_OFF_TIME1 ; 
 int /*<<< orphan*/  PM8607_MEAS_OFF_TIME2 ; 
 int /*<<< orphan*/  PM8607_POWER_UP_LOG ; 
 int /*<<< orphan*/  PM8607_RTC1 ; 
 int /*<<< orphan*/  PM8607_RTC_MISC2 ; 
 int /*<<< orphan*/  PM8607_STATUS_2 ; 
 scalar_t__ PM860X_TEMP_TBAT ; 
 scalar_t__ PM860X_TEMP_TINT ; 
 int STATUS2_BAT ; 
 int /*<<< orphan*/  FUNC0 (struct pm860x_battery_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct pm860x_battery_info *info)
{
	unsigned char buf[2];
	int ret;
	int data;
	int bat_remove;
	int soc;

	/* measure enable on GPADC1 */
	data = MEAS1_GP1;
	if (info->temp_type == PM860X_TEMP_TINT)
		data |= MEAS1_TINT;
	ret = FUNC6(info->i2c, PM8607_MEAS_EN1, data, data);
	if (ret)
		goto out;

	/* measure enable on IBAT, BAT_DET, CC. IBAT is depend on CC. */
	data = MEAS3_IBAT | MEAS3_BAT_DET | MEAS3_CC;
	ret = FUNC6(info->i2c, PM8607_MEAS_EN3, data, data);
	if (ret)
		goto out;

	/* measure disable CC in sleep time  */
	ret = FUNC5(info->i2c, PM8607_MEAS_OFF_TIME1, 0x82);
	if (ret)
		goto out;
	ret = FUNC5(info->i2c, PM8607_MEAS_OFF_TIME2, 0x6c);
	if (ret)
		goto out;

	/* enable GPADC */
	ret = FUNC6(info->i2c, PM8607_GPADC_MISC1,
			    GPMISC1_GPADC_EN, GPMISC1_GPADC_EN);
	if (ret < 0)
		goto out;

	/* detect battery via GPADC1 */
	ret = FUNC6(info->i2c, PM8607_CHG_CTRL6,
			    CC6_BAT_DET_GPADC1, CC6_BAT_DET_GPADC1);
	if (ret < 0)
		goto out;

	ret = FUNC6(info->i2c, PM8607_CCNT, 7 << 3,
			      CCNT_AVG_SEL);
	if (ret < 0)
		goto out;

	/* set GPADC1 bias */
	ret = FUNC6(info->i2c, PM8607_GP_BIAS2, 0xF << 4,
			      GPBIAS2_GPADC1_SET);
	if (ret < 0)
		goto out;

	/* check whether battery present) */
	FUNC2(&info->lock);
	ret = FUNC4(info->i2c, PM8607_STATUS_2);
	if (ret < 0) {
		FUNC3(&info->lock);
		goto out;
	}
	if (ret & STATUS2_BAT) {
		info->present = 1;
		info->temp_type = PM860X_TEMP_TBAT;
	} else {
		info->present = 0;
		info->temp_type = PM860X_TEMP_TINT;
	}
	FUNC3(&info->lock);

	FUNC0(info, OCV_MODE_ACTIVE, &soc);

	data = FUNC4(info->i2c, PM8607_POWER_UP_LOG);
	bat_remove = data & BAT_WU_LOG;

	FUNC1(info->dev, "battery wake up? %s\n",
		bat_remove != 0 ? "yes" : "no");

	/* restore SOC from RTC domain register */
	if (bat_remove == 0) {
		buf[0] = FUNC4(info->i2c, PM8607_RTC_MISC2);
		buf[1] = FUNC4(info->i2c, PM8607_RTC1);
		data = ((buf[1] & 0x3) << 5) | ((buf[0] >> 3) & 0x1F);
		if (data > soc + 15)
			info->start_soc = soc;
		else if (data < soc - 15)
			info->start_soc = soc;
		else
			info->start_soc = data;
		FUNC1(info->dev, "soc_rtc %d, soc_ocv :%d\n", data, soc);
	} else {
		FUNC6(info->i2c, PM8607_POWER_UP_LOG,
				BAT_WU_LOG, BAT_WU_LOG);
		info->start_soc = soc;
	}
	info->last_capacity = info->start_soc;
	FUNC1(info->dev, "init soc : %d\n", info->last_capacity);
out:
	return;
}