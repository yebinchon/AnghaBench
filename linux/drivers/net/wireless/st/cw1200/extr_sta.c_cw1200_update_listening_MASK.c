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
struct cw1200_common {scalar_t__ join_status; } ;

/* Variables and functions */
 scalar_t__ CW1200_JOIN_STATUS_MONITOR ; 
 scalar_t__ CW1200_JOIN_STATUS_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*,int) ; 

void FUNC3(struct cw1200_common *priv, bool enabled)
{
	if (enabled) {
		if (priv->join_status == CW1200_JOIN_STATUS_PASSIVE) {
			if (!FUNC1(priv))
				priv->join_status = CW1200_JOIN_STATUS_MONITOR;
			FUNC2(priv, true);
		}
	} else {
		if (priv->join_status == CW1200_JOIN_STATUS_MONITOR) {
			if (!FUNC0(priv))
				priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
			FUNC2(priv, false);
		}
	}
}