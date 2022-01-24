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
struct tty_struct {int dummy; } ;
struct gsm_dlci {int /*<<< orphan*/  state; int /*<<< orphan*/  port; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLCI_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 struct tty_struct* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct gsm_dlci *dlci)
{
	struct tty_struct *tty = FUNC6(&dlci->port);
	if (tty) {
		FUNC2(&dlci->mutex);
		FUNC1(dlci);
		FUNC3(&dlci->mutex);

		FUNC4(tty);

		FUNC7(&dlci->port, NULL);
		FUNC5(tty);
	}
	dlci->state = DLCI_CLOSED;
	FUNC0(dlci);
}