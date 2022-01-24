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
struct inbuf_t {unsigned int head; unsigned int tail; unsigned char* data; struct cardstate* cs; } ;
struct cardstate {scalar_t__ mstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INTR ; 
 int /*<<< orphan*/  DEBUG_LOCKCMD ; 
 scalar_t__ MS_LOCKED ; 
 unsigned int RBUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int,struct inbuf_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cardstate*,unsigned char*,unsigned int) ; 

void FUNC4(struct inbuf_t *inbuf)
{
	struct cardstate *cs = inbuf->cs;
	unsigned tail, head, numbytes;
	unsigned char *src;

	head = inbuf->head;
	while (head != (tail = inbuf->tail)) {
		FUNC1(DEBUG_INTR, "buffer state: %u -> %u", head, tail);
		if (head > tail)
			tail = RBUFSIZE;
		src = inbuf->data + head;
		numbytes = tail - head;
		FUNC1(DEBUG_INTR, "processing %u bytes", numbytes);

		if (cs->mstate == MS_LOCKED) {
			FUNC2(DEBUG_LOCKCMD, "received response",
					   numbytes, src);
			FUNC3(inbuf->cs, src, numbytes);
		} else {
			FUNC0(src, numbytes, inbuf);
		}

		head += numbytes;
		if (head == RBUFSIZE)
			head = 0;
		FUNC1(DEBUG_INTR, "setting head to %u", head);
		inbuf->head = head;
	}
}