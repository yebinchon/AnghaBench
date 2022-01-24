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
struct hvc_struct {size_t index; int /*<<< orphan*/  port; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t MAX_NR_HVC_CONSOLES ; 
 int /*<<< orphan*/ ** cons_ops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int* vtermnos ; 

int FUNC8(struct hvc_struct *hp)
{
	unsigned long flags;
	struct tty_struct *tty;

	tty = FUNC6(&hp->port);

	FUNC0();
	FUNC2(&hp->lock, flags);
	if (hp->index < MAX_NR_HVC_CONSOLES) {
		vtermnos[hp->index] = -1;
		cons_ops[hp->index] = NULL;
	}

	/* Don't whack hp->irq because tty_hangup() will need to free the irq. */

	FUNC3(&hp->lock, flags);
	FUNC1();

	/*
	 * We 'put' the instance that was grabbed when the kref instance
	 * was initialized using kref_init().  Let the last holder of this
	 * kref cause it to be removed, which will probably be the tty_vhangup
	 * below.
	 */
	FUNC5(&hp->port);

	/*
	 * This function call will auto chain call hvc_hangup.
	 */
	if (tty) {
		FUNC7(tty);
		FUNC4(tty);
	}
	return 0;
}