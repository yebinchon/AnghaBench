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
struct tty_struct {struct gsm_mux* disc_data; } ;
struct gsm_mux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,struct gsm_mux*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_mux*) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct gsm_mux *gsm = tty->disc_data;

	FUNC0(tty, gsm);

	FUNC1(tty);
	/* Do other clean up here */
	FUNC2(gsm);
}