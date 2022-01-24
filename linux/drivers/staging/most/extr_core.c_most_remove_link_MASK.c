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
struct TYPE_3__ {struct core_component* comp; } ;
struct TYPE_4__ {struct core_component* comp; } ;
struct most_channel {TYPE_1__ pipe1; TYPE_2__ pipe0; int /*<<< orphan*/  channel_id; int /*<<< orphan*/  iface; } ;
struct core_component {scalar_t__ (* disconnect_channel ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 struct most_channel* FUNC0 (char*,char*) ; 
 struct core_component* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(char *mdev, char *mdev_ch, char *comp_name)
{
	struct most_channel *c;
	struct core_component *comp;

	comp = FUNC1(comp_name);
	if (!comp)
		return -ENODEV;
	c = FUNC0(mdev, mdev_ch);
	if (!c)
		return -ENODEV;

	if (comp->disconnect_channel(c->iface, c->channel_id))
		return -EIO;
	if (c->pipe0.comp == comp)
		c->pipe0.comp = NULL;
	if (c->pipe1.comp == comp)
		c->pipe1.comp = NULL;
	return 0;
}