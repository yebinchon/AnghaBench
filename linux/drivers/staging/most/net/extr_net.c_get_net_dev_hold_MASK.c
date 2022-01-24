#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ linked; } ;
struct TYPE_3__ {scalar_t__ linked; } ;
struct net_dev_context {int /*<<< orphan*/  dev; TYPE_2__ tx; TYPE_1__ rx; } ;
struct most_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_dev_context* FUNC1 (struct most_interface*) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct net_dev_context *FUNC4(struct most_interface *iface)
{
	struct net_dev_context *nd;
	unsigned long flags;

	FUNC2(&list_lock, flags);
	nd = FUNC1(iface);
	if (nd && nd->rx.linked && nd->tx.linked)
		FUNC0(nd->dev);
	else
		nd = NULL;
	FUNC3(&list_lock, flags);
	return nd;
}