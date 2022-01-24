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
typedef  scalar_t__ u16 ;
struct rpmhpd {int level_count; scalar_t__* level; int /*<<< orphan*/  res_name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 int FUNC1 (scalar_t__ const*) ; 
 int RPMH_ARC_MAX_LEVELS ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct rpmhpd *rpmhpd)
{
	int i;
	const u16 *buf;

	buf = FUNC2(rpmhpd->res_name, &rpmhpd->level_count);
	if (FUNC0(buf))
		return FUNC1(buf);

	/* 2 bytes used for each command DB aux data entry */
	rpmhpd->level_count >>= 1;

	if (rpmhpd->level_count > RPMH_ARC_MAX_LEVELS)
		return -EINVAL;

	for (i = 0; i < rpmhpd->level_count; i++) {
		rpmhpd->level[i] = buf[i];

		/*
		 * The AUX data may be zero padded.  These 0 valued entries at
		 * the end of the map must be ignored.
		 */
		if (i > 0 && rpmhpd->level[i] == 0) {
			rpmhpd->level_count = i;
			break;
		}
		FUNC3("%s: ARC hlvl=%2d --> vlvl=%4u\n", rpmhpd->res_name, i,
			 rpmhpd->level[i]);
	}

	return 0;
}