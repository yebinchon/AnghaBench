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
struct tty_struct {struct tracerouter_data* disc_data; } ;
struct tracerouter_data {int /*<<< orphan*/ * kref_tty; } ;
struct TYPE_2__ {scalar_t__ opencalled; int /*<<< orphan*/ * kref_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  routelock ; 
 TYPE_1__* tr_data ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct tracerouter_data *tptr = tty->disc_data;

	FUNC1(&routelock);
	FUNC0(tptr->kref_tty != tr_data->kref_tty);
	FUNC3(tty);
	FUNC4(tr_data->kref_tty);
	tr_data->kref_tty = NULL;
	tr_data->opencalled = 0;
	tty->disc_data = NULL;
	FUNC2(&routelock);
}