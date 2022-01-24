#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gdth_cmndinfo {scalar_t__ index; } ;
struct TYPE_3__ {int /*<<< orphan*/  smp_lock; struct gdth_cmndinfo* cmndinfo; } ;
typedef  TYPE_1__ gdth_ha_str ;

/* Variables and functions */
 int GDTH_MAXCMDS ; 
 int /*<<< orphan*/  FUNC0 (struct gdth_cmndinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct gdth_cmndinfo *FUNC3(gdth_ha_str *ha)
{
	struct gdth_cmndinfo *priv = NULL;
	unsigned long flags;
	int i;

	FUNC1(&ha->smp_lock, flags);

	for (i=0; i<GDTH_MAXCMDS; ++i) {
		if (ha->cmndinfo[i].index == 0) {
			priv = &ha->cmndinfo[i];
			FUNC0(priv, 0, sizeof(*priv));
			priv->index = i+1;
			break;
		}
	}

	FUNC2(&ha->smp_lock, flags);

	return priv;
}