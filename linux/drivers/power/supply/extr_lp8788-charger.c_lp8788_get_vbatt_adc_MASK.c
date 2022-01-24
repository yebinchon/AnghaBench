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
struct lp8788_charger {struct iio_channel** chan; } ;
struct iio_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t LP8788_VBATT ; 
 int FUNC0 (struct iio_channel*,int*) ; 

__attribute__((used)) static int FUNC1(struct lp8788_charger *pchg, int *result)
{
	struct iio_channel *channel = pchg->chan[LP8788_VBATT];

	if (!channel)
		return -EINVAL;

	return FUNC0(channel, result);
}