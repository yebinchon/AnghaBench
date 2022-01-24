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
struct uart_port {scalar_t__ type; } ;
struct sci_port {long hscif_tot; long rx_fifo_timeout; int /*<<< orphan*/  rx_fifo_timer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 long HSSCR_TOT_SHIFT ; 
 scalar_t__ PORT_HSCIF ; 
 struct uart_port* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  rx_fifo_timer_fn ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr,
				const char *buf,
				size_t count)
{
	struct uart_port *port = FUNC0(dev);
	struct sci_port *sci = FUNC4(port);
	int ret;
	long r;

	ret = FUNC1(buf, 0, &r);
	if (ret)
		return ret;

	if (port->type == PORT_HSCIF) {
		if (r < 0 || r > 3)
			return -EINVAL;
		sci->hscif_tot = r << HSSCR_TOT_SHIFT;
	} else {
		sci->rx_fifo_timeout = r;
		FUNC2(port, 1);
		if (r > 0)
			FUNC3(&sci->rx_fifo_timer, rx_fifo_timer_fn, 0);
	}

	return count;
}