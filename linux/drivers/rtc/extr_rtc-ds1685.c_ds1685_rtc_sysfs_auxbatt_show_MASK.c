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
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int /*<<< orphan*/ ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int RTC_CTRL_4A_VRT2 ; 
 int /*<<< orphan*/  RTC_EXT_CTRL_4A ; 
 struct ds1685_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int FUNC4 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct ds1685_priv *rtc = FUNC0(dev->parent);
	u8 ctrl4a;

	FUNC2(rtc);
	ctrl4a = rtc->read(rtc, RTC_EXT_CTRL_4A);
	FUNC1(rtc);

	return FUNC3(buf, "%s\n",
			(ctrl4a & RTC_CTRL_4A_VRT2) ? "ok" : "not ok or N/A");
}