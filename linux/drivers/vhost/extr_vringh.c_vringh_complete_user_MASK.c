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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vringh {int dummy; } ;
struct vring_used_elem {void* len; void* id; } ;

/* Variables and functions */
 int FUNC0 (struct vringh*,struct vring_used_elem*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct vringh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  putu16_user ; 
 int /*<<< orphan*/  putused_user ; 

int FUNC2(struct vringh *vrh, u16 head, u32 len)
{
	struct vring_used_elem used;

	used.id = FUNC1(vrh, head);
	used.len = FUNC1(vrh, len);
	return FUNC0(vrh, &used, 1, putu16_user, putused_user);
}