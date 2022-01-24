#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {int idle_mode; int /*<<< orphan*/  lock; TYPE_1__ params; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 

__attribute__((used)) static int FUNC4(struct slgt_info *info, int idle_mode)
{
 	unsigned long flags;
	FUNC0(("%s set_txidle(%d)\n", info->device_name, idle_mode));
	FUNC1(&info->lock,flags);
	info->idle_mode = idle_mode;
	if (info->params.mode != MGSL_MODE_ASYNC)
		FUNC3(info);
	FUNC2(&info->lock,flags);
	return 0;
}