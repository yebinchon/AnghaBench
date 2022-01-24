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
struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int /*<<< orphan*/  port; int /*<<< orphan*/  mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ DLCI_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tty_struct*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct tty_struct *tty, struct file *filp)
{
	struct gsm_dlci *dlci = tty->driver_data;

	if (dlci == NULL)
		return;
	if (dlci->state == DLCI_CLOSED)
		return;
	FUNC3(&dlci->mutex);
	FUNC1(dlci);
	FUNC4(&dlci->mutex);
	if (FUNC6(&dlci->port, tty, filp) == 0)
		return;
	FUNC2(dlci);
	if (FUNC7(&dlci->port) && FUNC0(tty))
		FUNC8(&dlci->port);
	FUNC5(&dlci->port, tty);
	FUNC9(&dlci->port, NULL);
	return;
}