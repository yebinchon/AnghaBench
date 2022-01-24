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
struct cyclades_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;
struct cyclades_port {TYPE_1__* card; struct cyclades_icount icount; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_CTS ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RNG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct cyclades_port *info, unsigned long arg,
		struct cyclades_icount *cprev)
{
	struct cyclades_icount cnow;
	unsigned long flags;
	int ret;

	FUNC0(&info->card->card_lock, flags);
	cnow = info->icount;	/* atomic copy */
	FUNC1(&info->card->card_lock, flags);

	ret =	((arg & TIOCM_RNG) && (cnow.rng != cprev->rng)) ||
		((arg & TIOCM_DSR) && (cnow.dsr != cprev->dsr)) ||
		((arg & TIOCM_CD)  && (cnow.dcd != cprev->dcd)) ||
		((arg & TIOCM_CTS) && (cnow.cts != cprev->cts));

	*cprev = cnow;

	return ret;
}