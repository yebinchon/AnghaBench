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

/* Variables and functions */
 int CONFIG_SERIAL_RP2_NR_UARTS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  rp2_minor_lock ; 
 int rp2_minor_next ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(int n_ports)
{
	int ret = -ENOSPC;

	FUNC0(&rp2_minor_lock);
	if (rp2_minor_next + n_ports <= CONFIG_SERIAL_RP2_NR_UARTS) {
		/* sorry, no support for hot unplugging individual cards */
		ret = rp2_minor_next;
		rp2_minor_next += n_ports;
	}
	FUNC1(&rp2_minor_lock);

	return ret;
}