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
struct cmdbuf_t {int len; struct cmdbuf_t* next; struct cmdbuf_t* prev; int /*<<< orphan*/  buf; } ;
struct cardstate {scalar_t__ mstate; int curlen; int cmdbytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_tasklet; scalar_t__ connected; int /*<<< orphan*/  cmdlock; struct cmdbuf_t* lastcmdbuf; struct cmdbuf_t* cmdbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_LOCKCMD ; 
 int /*<<< orphan*/  DEBUG_TRANSCMD ; 
 scalar_t__ MS_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cardstate *cs, struct cmdbuf_t *cb)
{
	unsigned long flags;
	int len;

	FUNC0(cs->mstate != MS_LOCKED ?
			   DEBUG_TRANSCMD : DEBUG_LOCKCMD,
			   "CMD Transmit", cb->len, cb->buf);

	FUNC1(&cs->cmdlock, flags);
	cb->prev = cs->lastcmdbuf;
	if (cs->lastcmdbuf)
		cs->lastcmdbuf->next = cb;
	else {
		cs->cmdbuf = cb;
		cs->curlen = cb->len;
	}
	cs->cmdbytes += cb->len;
	cs->lastcmdbuf = cb;
	FUNC2(&cs->cmdlock, flags);

	FUNC1(&cs->lock, flags);
	len = cb->len;
	if (cs->connected)
		FUNC3(&cs->write_tasklet);
	FUNC2(&cs->lock, flags);
	return len;
}