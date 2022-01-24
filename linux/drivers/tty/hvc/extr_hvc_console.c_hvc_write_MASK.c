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
struct tty_struct {struct hvc_struct* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct hvc_struct {int outbuf_size; int n_outbuf; int outbuf; int /*<<< orphan*/  lock; TYPE_1__ port; } ;

/* Variables and functions */
 int EIO ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hvc_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct hvc_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty, const unsigned char *buf, int count)
{
	struct hvc_struct *hp = tty->driver_data;
	unsigned long flags;
	int rsize, written = 0;

	/* This write was probably executed during a tty close. */
	if (!hp)
		return -EPIPE;

	/* FIXME what's this (unprotected) check for? */
	if (hp->port.count <= 0)
		return -EIO;

	while (count > 0) {
		int ret = 0;

		FUNC5(&hp->lock, flags);

		rsize = hp->outbuf_size - hp->n_outbuf;

		if (rsize) {
			if (rsize > count)
				rsize = count;
			FUNC4(hp->outbuf + hp->n_outbuf, buf, rsize);
			count -= rsize;
			buf += rsize;
			hp->n_outbuf += rsize;
			written += rsize;
		}

		if (hp->n_outbuf > 0)
			ret = FUNC3(hp);

		FUNC6(&hp->lock, flags);

		if (!ret)
			break;

		if (count) {
			if (hp->n_outbuf > 0)
				FUNC1(hp);
			FUNC0();
		}
	}

	/*
	 * Racy, but harmless, kick thread if there is still pending data.
	 */
	if (hp->n_outbuf)
		FUNC2();

	return written;
}