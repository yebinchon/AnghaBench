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
struct TYPE_2__ {scalar_t__ sring; } ;
struct vscsifrnt_info {TYPE_1__ ring; int /*<<< orphan*/  ring_ref; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vscsifrnt_info*) ; 

__attribute__((used)) static void FUNC2(struct vscsifrnt_info *info)
{
	FUNC1(info->irq, info);
	FUNC0(info->ring_ref, 0,
				  (unsigned long)info->ring.sring);
}