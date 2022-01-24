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
struct TYPE_2__ {int ch_id; } ;
struct net_dev_context {int /*<<< orphan*/  dev; TYPE_1__ tx; } ;
struct most_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_dev_context* FUNC1 (struct most_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct most_interface *iface,
				  int channel_idx)
{
	struct net_dev_context *nd;

	nd = FUNC1(iface);
	if (!nd)
		return 0;

	if (nd->tx.ch_id != channel_idx)
		goto put_nd;

	FUNC2(nd->dev);

put_nd:
	FUNC0(nd->dev);
	return 0;
}