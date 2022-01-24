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
struct ds278x_info {int status; int capacity; int /*<<< orphan*/  battery; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ds278x_info*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ds278x_info *info)
{
	int old_status = info->status;
	int old_capacity = info->capacity;

	FUNC0(info, &info->status);

	if ((old_status != info->status) || (old_capacity != info->capacity))
		FUNC1(info->battery);
}