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
struct console {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 TYPE_1__* early_device ; 
 int /*<<< orphan*/  ingenic_early_console_putc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct console *console,
					      const char *s, unsigned int count)
{
	FUNC0(&early_device->port, s, count,
			   ingenic_early_console_putc);
}