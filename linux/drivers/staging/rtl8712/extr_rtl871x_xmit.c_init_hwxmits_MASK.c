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
struct hw_xmit {scalar_t__ accnt; scalar_t__ txcmdcnt; int /*<<< orphan*/  pending; int /*<<< orphan*/  xmit_lock; } ;
typedef  scalar_t__ sint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct hw_xmit *phwxmit, sint entry)
{
	sint i;

	for (i = 0; i < entry; i++, phwxmit++) {
		FUNC1(&phwxmit->xmit_lock);
		FUNC0(&phwxmit->pending);
		phwxmit->txcmdcnt = 0;
		phwxmit->accnt = 0;
	}
}