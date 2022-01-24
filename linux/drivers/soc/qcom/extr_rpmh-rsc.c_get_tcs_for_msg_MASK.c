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
struct tcs_request {int state; } ;
struct tcs_group {scalar_t__ num_tcs; } ;
struct rsc_drv {int dummy; } ;

/* Variables and functions */
 int ACTIVE_TCS ; 
 int EINVAL ; 
 struct tcs_group* FUNC0 (int) ; 
#define  RPMH_ACTIVE_ONLY_STATE 130 
#define  RPMH_SLEEP_STATE 129 
#define  RPMH_WAKE_ONLY_STATE 128 
 int SLEEP_TCS ; 
 int WAKE_TCS ; 
 struct tcs_group* FUNC1 (struct rsc_drv*,int) ; 
 int FUNC2 (struct rsc_drv*) ; 

__attribute__((used)) static struct tcs_group *FUNC3(struct rsc_drv *drv,
					 const struct tcs_request *msg)
{
	int type, ret;
	struct tcs_group *tcs;

	switch (msg->state) {
	case RPMH_ACTIVE_ONLY_STATE:
		type = ACTIVE_TCS;
		break;
	case RPMH_WAKE_ONLY_STATE:
		type = WAKE_TCS;
		break;
	case RPMH_SLEEP_STATE:
		type = SLEEP_TCS;
		break;
	default:
		return FUNC0(-EINVAL);
	}

	/*
	 * If we are making an active request on a RSC that does not have a
	 * dedicated TCS for active state use, then re-purpose a wake TCS to
	 * send active votes.
	 * NOTE: The driver must be aware that this RSC does not have a
	 * dedicated AMC, and therefore would invalidate the sleep and wake
	 * TCSes before making an active state request.
	 */
	tcs = FUNC1(drv, type);
	if (msg->state == RPMH_ACTIVE_ONLY_STATE && !tcs->num_tcs) {
		tcs = FUNC1(drv, WAKE_TCS);
		if (tcs->num_tcs) {
			ret = FUNC2(drv);
			if (ret)
				return FUNC0(ret);
		}
	}

	return tcs;
}