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
struct gsm_mux {int /*<<< orphan*/  tty; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int NUM_DLCI ; 
 int FUNC0 (struct gsm_mux*) ; 
 int /*<<< orphan*/  gsm_tty_driver ; 
 int /*<<< orphan*/  gsmld_output ; 
 unsigned int FUNC1 (struct gsm_mux*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct gsm_mux *gsm)
{
	unsigned int base;
	int ret, i;

	gsm->tty = FUNC2(tty);
	gsm->output = gsmld_output;
	ret =  FUNC0(gsm);
	if (ret != 0)
		FUNC3(gsm->tty);
	else {
		/* Don't register device 0 - this is the control channel and not
		   a usable tty interface */
		base = FUNC1(gsm); /* Base for this MUX */
		for (i = 1; i < NUM_DLCI; i++)
			FUNC4(gsm_tty_driver, base + i, NULL);
	}
	return ret;
}