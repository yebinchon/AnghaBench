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
struct tty_struct {int receive_room; struct gsm_mux* disc_data; TYPE_1__* ops; } ;
struct gsm_mux {int encoding; } ;
struct TYPE_2__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct gsm_mux* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_mux*) ; 
 int FUNC2 (struct tty_struct*,struct gsm_mux*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsm_mux*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct gsm_mux *gsm;
	int ret;

	if (tty->ops->write == NULL)
		return -EINVAL;

	/* Attach our ldisc data */
	gsm = FUNC0();
	if (gsm == NULL)
		return -ENOMEM;

	tty->disc_data = gsm;
	tty->receive_room = 65536;

	/* Attach the initial passive connection */
	gsm->encoding = 1;

	ret = FUNC2(tty, gsm);
	if (ret != 0) {
		FUNC1(gsm);
		FUNC3(gsm);
	}
	return ret;
}