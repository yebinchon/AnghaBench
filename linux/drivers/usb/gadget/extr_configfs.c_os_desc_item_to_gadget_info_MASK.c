#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gadget_info {int dummy; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ci_parent; } ;
struct TYPE_5__ {TYPE_1__ cg_item; } ;
struct TYPE_6__ {TYPE_2__ group; } ;

/* Variables and functions */
 struct gadget_info* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct config_item*) ; 

__attribute__((used)) static inline struct gadget_info *FUNC2(
		struct config_item *item)
{
	return FUNC0(FUNC1(item)->group.cg_item.ci_parent);
}