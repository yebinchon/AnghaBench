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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
struct goldfish_tty {int /*<<< orphan*/  irq; int /*<<< orphan*/ * base; TYPE_1__ console; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct platform_device*) ; 
 scalar_t__ goldfish_tty_current_line_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  goldfish_tty_driver ; 
 int /*<<< orphan*/  goldfish_tty_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct goldfish_tty* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct goldfish_tty *qtty = FUNC5(pdev);

	FUNC3(&goldfish_tty_lock);

	FUNC7(&qtty->console);
	FUNC6(goldfish_tty_driver, qtty->console.index);
	FUNC2(qtty->base);
	qtty->base = NULL;
	FUNC0(qtty->irq, pdev);
	goldfish_tty_current_line_count--;
	if (goldfish_tty_current_line_count == 0)
		FUNC1();
	FUNC4(&goldfish_tty_lock);
	return 0;
}