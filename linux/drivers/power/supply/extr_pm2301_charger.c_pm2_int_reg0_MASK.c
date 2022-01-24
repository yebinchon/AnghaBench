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
struct pm2xxx_charger {int dummy; } ;

/* Variables and functions */
 int PM2XXX_INT1_ITVBATDISCONNECT ; 
 int PM2XXX_INT1_ITVBATLOWF ; 
 int PM2XXX_INT1_ITVBATLOWR ; 
 int FUNC0 (struct pm2xxx_charger*,int) ; 
 int FUNC1 (struct pm2xxx_charger*,int) ; 

__attribute__((used)) static int FUNC2(void *pm2_data, int val)
{
	struct pm2xxx_charger *pm2 = pm2_data;
	int ret = 0;

	if (val & PM2XXX_INT1_ITVBATLOWR) {
		ret = FUNC1(pm2,
						PM2XXX_INT1_ITVBATLOWR);
		if (ret < 0)
			goto out;
	}

	if (val & PM2XXX_INT1_ITVBATLOWF) {
		ret = FUNC1(pm2,
						PM2XXX_INT1_ITVBATLOWF);
		if (ret < 0)
			goto out;
	}

	if (val & PM2XXX_INT1_ITVBATDISCONNECT) {
		ret = FUNC0(pm2,
				PM2XXX_INT1_ITVBATDISCONNECT);
		if (ret < 0)
			goto out;
	}
out:
	return ret;
}