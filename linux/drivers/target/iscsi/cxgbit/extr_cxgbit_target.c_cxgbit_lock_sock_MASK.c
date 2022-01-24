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
struct cxgbit_sock {int lock_owner; int /*<<< orphan*/  lock; scalar_t__ snd_win; scalar_t__ snd_una; int /*<<< orphan*/  write_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct cxgbit_sock *csk)
{
	FUNC1(&csk->lock);

	if (FUNC0(csk->write_seq, csk->snd_una + csk->snd_win))
		csk->lock_owner = true;

	FUNC2(&csk->lock);

	return csk->lock_owner;
}