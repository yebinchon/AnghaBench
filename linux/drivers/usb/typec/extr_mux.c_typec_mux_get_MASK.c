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
struct TYPE_6__ {TYPE_2__* parent; } ;
struct typec_mux {TYPE_3__ dev; } ;
struct typec_altmode_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct typec_mux*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct typec_mux* FUNC2 (struct device*,char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typec_mux_match ; 

struct typec_mux *FUNC4(struct device *dev,
				const struct typec_altmode_desc *desc)
{
	struct typec_mux *mux;

	mux = FUNC2(dev, "mode-switch", (void *)desc,
					   typec_mux_match);
	if (!FUNC0(mux))
		FUNC1(!FUNC3(mux->dev.parent->driver->owner));

	return mux;
}