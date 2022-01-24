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
struct typec_port {int /*<<< orphan*/  dev; } ;
struct typec_mux {int dummy; } ;
struct typec_altmode_desc {int dummy; } ;
typedef  struct typec_mux typec_altmode ;
struct TYPE_2__ {struct typec_mux* mux; } ;

/* Variables and functions */
 struct typec_mux* FUNC0 (struct typec_mux*) ; 
 scalar_t__ FUNC1 (struct typec_mux*) ; 
 TYPE_1__* FUNC2 (struct typec_mux*) ; 
 struct typec_mux* FUNC3 (int /*<<< orphan*/ *,struct typec_altmode_desc const*) ; 
 int /*<<< orphan*/  FUNC4 (struct typec_mux*) ; 
 struct typec_mux* FUNC5 (int /*<<< orphan*/ *,struct typec_altmode_desc const*) ; 

struct typec_altmode *
FUNC6(struct typec_port *port,
			    const struct typec_altmode_desc *desc)
{
	struct typec_altmode *adev;
	struct typec_mux *mux;

	mux = FUNC3(&port->dev, desc);
	if (FUNC1(mux))
		return FUNC0(mux);

	adev = FUNC5(&port->dev, desc);
	if (FUNC1(adev))
		FUNC4(mux);
	else
		FUNC2(adev)->mux = mux;

	return adev;
}