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
struct tty_struct {int /*<<< orphan*/  flow_stopped; scalar_t__ stopped; struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ canon_head; scalar_t__ read_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,struct n_tty_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 

__attribute__((used)) static inline void
FUNC11(struct tty_struct *tty, unsigned char c)
{
	struct n_tty_data *ldata = tty->disc_data;

	if (tty->stopped && !tty->flow_stopped && FUNC1(tty) && FUNC0(tty)) {
		FUNC10(tty);
		FUNC8(tty);
	}
	if (FUNC3(tty)) {
		FUNC7(ldata);
		/* Record the column of first canon char. */
		if (ldata->canon_head == ldata->read_head)
			FUNC6(ldata);
		FUNC5(c, tty);
		FUNC4(tty);
	}
	/* PARMRK doubling check */
	if (c == (unsigned char) '\377' && FUNC2(tty))
		FUNC9(c, ldata);
	FUNC9(c, ldata);
}