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
struct channel_subsystem {int /*<<< orphan*/ * chps; } ;

/* Variables and functions */
 int __MAX_CHPID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct channel_subsystem *css)
{
	int i, ret;

	ret = 0;
	for (i = 0; i <= __MAX_CHPID; i++) {
		if (!css->chps[i])
			continue;
		ret = FUNC0(css->chps[i]);
		if (ret)
			goto cleanup;
	}
	return ret;
cleanup:
	for (--i; i >= 0; i--) {
		if (!css->chps[i])
			continue;
		FUNC1(css->chps[i]);
	}
	return ret;
}