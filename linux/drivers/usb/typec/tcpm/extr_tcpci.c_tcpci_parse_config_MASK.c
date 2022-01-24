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
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;
struct tcpci {int controls_vbus; int /*<<< orphan*/  dev; TYPE_1__ tcpc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct tcpci *tcpci)
{
	tcpci->controls_vbus = true; /* XXX */

	tcpci->tcpc.fwnode = FUNC1(tcpci->dev,
							 "connector");
	if (!tcpci->tcpc.fwnode) {
		FUNC0(tcpci->dev, "Can't find connector node.\n");
		return -EINVAL;
	}

	return 0;
}