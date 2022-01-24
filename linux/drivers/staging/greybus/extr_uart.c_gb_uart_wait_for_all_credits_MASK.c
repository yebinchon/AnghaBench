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
struct gb_tty {scalar_t__ credits; TYPE_1__* gbphy_dev; int /*<<< orphan*/  credits_complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GB_UART_CREDIT_WAIT_TIMEOUT_MSEC ; 
 scalar_t__ GB_UART_FIRMWARE_CREDITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gb_tty *gb_tty)
{
	int ret;

	if (gb_tty->credits == GB_UART_FIRMWARE_CREDITS)
		return 0;

	ret = FUNC2(&gb_tty->credits_complete,
			FUNC1(GB_UART_CREDIT_WAIT_TIMEOUT_MSEC));
	if (!ret) {
		FUNC0(&gb_tty->gbphy_dev->dev,
			"time out waiting for credits\n");
		return -ETIMEDOUT;
	}

	return 0;
}