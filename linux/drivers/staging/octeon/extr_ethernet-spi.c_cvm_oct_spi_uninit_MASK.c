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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OCTEON_IRQ_RML ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ number_spi_ports ; 

void FUNC5(struct net_device *dev)
{
	int interface;

	FUNC2(dev);
	number_spi_ports--;
	if (number_spi_ports == 0) {
		for (interface = 0; interface < 2; interface++) {
			FUNC3(FUNC0(interface), 0);
			FUNC3(FUNC1(interface), 0);
		}
		FUNC4(OCTEON_IRQ_RML, &number_spi_ports);
	}
}