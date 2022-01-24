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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct comedi_device*) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev,
					  unsigned int base_chan,
					  unsigned int rising,
					  unsigned int falling)
{
	unsigned int num_ports = FUNC4(dev);
	unsigned int port;

	if (base_chan >= FUNC2(num_ports))
		return;

	for (port = FUNC0(base_chan); port < num_ports; port++) {
		int bitshift = (int)(FUNC2(port) - base_chan);
		unsigned int port_mask, port_rising, port_falling;

		if (bitshift >= 32)
			break;

		if (bitshift >= 0) {
			port_mask = ~0U >> bitshift;
			port_rising = rising >> bitshift;
			port_falling = falling >> bitshift;
		} else {
			port_mask = ~0U << -bitshift;
			port_rising = rising << -bitshift;
			port_falling = falling << -bitshift;
		}
		if (port_mask & 0xff) {
			if (~port_mask & 0xff) {
				port_rising |=
				    FUNC5(dev->mmio +
					  FUNC3(port)) &
				    ~port_mask;
				port_falling |=
				    FUNC5(dev->mmio +
					  FUNC1(port)) &
				    ~port_mask;
			}
			FUNC6(port_rising & 0xff,
			       dev->mmio + FUNC3(port));
			FUNC6(port_falling & 0xff,
			       dev->mmio + FUNC1(port));
		}
	}
}