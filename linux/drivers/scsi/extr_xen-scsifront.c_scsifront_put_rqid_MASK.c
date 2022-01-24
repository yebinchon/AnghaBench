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
typedef  int /*<<< orphan*/  uint32_t ;
struct vscsifrnt_info {int /*<<< orphan*/  shadow_lock; } ;

/* Variables and functions */
 int FUNC0 (struct vscsifrnt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct vscsifrnt_info *info, uint32_t id)
{
	unsigned long flags;
	int kick;

	FUNC2(&info->shadow_lock, flags);
	kick = FUNC0(info, id);
	FUNC3(&info->shadow_lock, flags);

	if (kick)
		FUNC1(info);
}