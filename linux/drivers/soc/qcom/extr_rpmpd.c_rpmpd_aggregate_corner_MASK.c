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
struct rpmpd {int /*<<< orphan*/  corner; scalar_t__ enabled; struct rpmpd* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_SMD_RPM_ACTIVE_STATE ; 
 int /*<<< orphan*/  QCOM_SMD_RPM_SLEEP_STATE ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (struct rpmpd*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpmpd*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct rpmpd *pd)
{
	int ret;
	struct rpmpd *peer = pd->peer;
	unsigned int active_corner, sleep_corner;
	unsigned int this_active_corner = 0, this_sleep_corner = 0;
	unsigned int peer_active_corner = 0, peer_sleep_corner = 0;

	FUNC2(pd, pd->corner, &this_active_corner, &this_sleep_corner);

	if (peer && peer->enabled)
		FUNC2(peer, peer->corner, &peer_active_corner,
				&peer_sleep_corner);

	active_corner = FUNC0(this_active_corner, peer_active_corner);

	ret = FUNC1(pd, QCOM_SMD_RPM_ACTIVE_STATE, active_corner);
	if (ret)
		return ret;

	sleep_corner = FUNC0(this_sleep_corner, peer_sleep_corner);

	return FUNC1(pd, QCOM_SMD_RPM_SLEEP_STATE, sleep_corner);
}