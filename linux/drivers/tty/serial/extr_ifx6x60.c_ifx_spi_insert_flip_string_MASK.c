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
struct ifx_spi_device {int /*<<< orphan*/  tty_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

__attribute__((used)) static void FUNC2(struct ifx_spi_device *ifx_dev,
				    unsigned char *chars, size_t size)
{
	FUNC1(&ifx_dev->tty_port, chars, size);
	FUNC0(&ifx_dev->tty_port);
}