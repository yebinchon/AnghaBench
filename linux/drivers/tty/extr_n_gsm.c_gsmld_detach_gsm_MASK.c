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
struct gsm_mux {struct tty_struct* tty; } ;

/* Variables and functions */
 int NUM_DLCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_mux*) ; 
 int /*<<< orphan*/  gsm_tty_driver ; 
 unsigned int FUNC2 (struct gsm_mux*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, struct gsm_mux *gsm)
{
	unsigned int base = FUNC2(gsm); /* Base for this MUX */
	int i;

	FUNC0(tty != gsm->tty);
	for (i = 1; i < NUM_DLCI; i++)
		FUNC4(gsm_tty_driver, base + i);
	FUNC1(gsm);
	FUNC3(gsm->tty);
	gsm->tty = NULL;
}