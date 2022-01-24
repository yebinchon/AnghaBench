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
struct tty_struct {struct ifx_spi_device* driver_data; } ;
struct ifx_spi_device {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  tx_fifo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ifx_spi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, const unsigned char *buf,
			 int count)
{
	struct ifx_spi_device *ifx_dev = tty->driver_data;
	unsigned char *tmp_buf = (unsigned char *)buf;
	unsigned long flags;
	bool is_fifo_empty;
	int tx_count;

	FUNC3(&ifx_dev->fifo_lock, flags);
	is_fifo_empty = FUNC1(&ifx_dev->tx_fifo);
	tx_count = FUNC0(&ifx_dev->tx_fifo, tmp_buf, count);
	FUNC4(&ifx_dev->fifo_lock, flags);
	if (is_fifo_empty)
		FUNC2(ifx_dev);

	return tx_count;
}