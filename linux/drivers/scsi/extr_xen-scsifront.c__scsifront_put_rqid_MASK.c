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
typedef  size_t uint32_t ;
struct vscsifrnt_info {scalar_t__ wait_ring_available; int /*<<< orphan*/ ** shadow; int /*<<< orphan*/  shadow_free_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSCSIIF_MAX_REQS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vscsifrnt_info *info, uint32_t id)
{
	int empty = FUNC1(info->shadow_free_bitmap, VSCSIIF_MAX_REQS);

	FUNC0(id, info->shadow_free_bitmap);
	info->shadow[id] = NULL;

	return empty || info->wait_ring_available;
}