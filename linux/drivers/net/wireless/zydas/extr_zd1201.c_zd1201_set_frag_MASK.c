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
struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {short value; int /*<<< orphan*/  fixed; scalar_t__ disabled; } ;

/* Variables and functions */
 int EINVAL ; 
 short ZD1201_FRAGMAX ; 
 short ZD1201_FRAGMIN ; 
 int /*<<< orphan*/  ZD1201_RID_CNFFRAGTHRESHOLD ; 
 struct zd1201* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct zd1201*) ; 
 int FUNC2 (struct zd1201*,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct iw_request_info *info,
    struct iw_param *frag, char *extra)
{
	struct zd1201 *zd = FUNC0(dev);
	int err;
	short val = frag->value;

	if (frag->disabled || !frag->fixed)
		val = ZD1201_FRAGMAX;
	if (val > ZD1201_FRAGMAX)
		return -EINVAL;
	if (val < ZD1201_FRAGMIN)
		return -EINVAL;
	if (val & 1)
		return -EINVAL;
	err = FUNC2(zd, ZD1201_RID_CNFFRAGTHRESHOLD, val);
	if (err)
		return err;
	return FUNC1(zd);
}