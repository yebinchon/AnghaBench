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
struct tty_struct {unsigned int index; struct gsm_dlci* driver_data; } ;
struct tty_driver {int dummy; } ;
struct gsm_mux {int /*<<< orphan*/  mutex; struct gsm_dlci** dlci; scalar_t__ dead; } ;
struct gsm_dlci {scalar_t__ state; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ DLCI_OPEN ; 
 int ECHRNG ; 
 int EL2HLT ; 
 int EL2NSYNC ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EUNATCH ; 
 unsigned int MAX_MUX ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_dlci*) ; 
 struct gsm_dlci* FUNC2 (struct gsm_mux*,unsigned int) ; 
 struct gsm_mux** gsm_mux ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gsm_mux*) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct tty_driver*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC8(struct tty_driver *driver, struct tty_struct *tty)
{
	struct gsm_mux *gsm;
	struct gsm_dlci *dlci;
	unsigned int line = tty->index;
	unsigned int mux = FUNC6(line);
	bool alloc = false;
	int ret;

	line = line & 0x3F;

	if (mux >= MAX_MUX)
		return -ENXIO;
	/* FIXME: we need to lock gsm_mux for lifetimes of ttys eventually */
	if (gsm_mux[mux] == NULL)
		return -EUNATCH;
	if (line == 0 || line > 61)	/* 62/63 reserved */
		return -ECHRNG;
	gsm = gsm_mux[mux];
	if (gsm->dead)
		return -EL2HLT;
	/* If DLCI 0 is not yet fully open return an error.
	This is ok from a locking
	perspective as we don't have to worry about this
	if DLCI0 is lost */
	FUNC3(&gsm->mutex);
	if (gsm->dlci[0] && gsm->dlci[0]->state != DLCI_OPEN) {
		FUNC4(&gsm->mutex);
		return -EL2NSYNC;
	}
	dlci = gsm->dlci[line];
	if (dlci == NULL) {
		alloc = true;
		dlci = FUNC2(gsm, line);
	}
	if (dlci == NULL) {
		FUNC4(&gsm->mutex);
		return -ENOMEM;
	}
	ret = FUNC7(&dlci->port, driver, tty);
	if (ret) {
		if (alloc)
			FUNC1(dlci);
		FUNC4(&gsm->mutex);
		return ret;
	}

	FUNC0(dlci);
	FUNC0(gsm->dlci[0]);
	FUNC5(gsm);
	tty->driver_data = dlci;
	FUNC4(&gsm->mutex);

	return 0;
}