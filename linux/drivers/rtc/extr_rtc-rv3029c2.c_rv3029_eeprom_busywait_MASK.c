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
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int RV3029_STATUS_EEBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int i, ret;
	u8 sr;

	for (i = 100; i > 0; i--) {
		ret = FUNC1(dev, &sr);
		if (ret < 0)
			break;
		if (!(sr & RV3029_STATUS_EEBUSY))
			break;
		FUNC2(1000, 10000);
	}
	if (i <= 0) {
		FUNC0(dev, "EEPROM busy wait timeout.\n");
		return -ETIMEDOUT;
	}

	return ret;
}