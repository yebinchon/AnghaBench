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
struct musb {int /*<<< orphan*/  xceiv; int /*<<< orphan*/  sync_va; int /*<<< orphan*/  (* board_set_power ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * the_musb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct musb *musb)
{
	FUNC0(&musb->dev_timer);
	the_musb = NULL;

	if (musb->board_set_power)
		musb->board_set_power(0);

	FUNC1(musb->sync_va);

	FUNC3(musb->xceiv);
	return 0;
}