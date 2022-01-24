#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {scalar_t__ index; TYPE_2__* driver; } ;
struct tty_audit_buf {scalar_t__ dev; unsigned int icanon; scalar_t__ valid; scalar_t__ data; int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ dev_t ;
struct TYPE_6__ {TYPE_1__* signal; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ subtype; int /*<<< orphan*/  minor_start; int /*<<< orphan*/  major; } ;
struct TYPE_4__ {int /*<<< orphan*/  audit_tty; } ;

/* Variables and functions */
 unsigned int AUDIT_TTY_ENABLE ; 
 unsigned int AUDIT_TTY_LOG_PASSWD ; 
 scalar_t__ FUNC0 (struct tty_audit_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ N_TTY_BUF_SIZE ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TTY_DRIVER_TYPE_PTY ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tty_audit_buf* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct tty_audit_buf*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct tty_struct *tty, const void *data, size_t size)
{
	struct tty_audit_buf *buf;
	unsigned int icanon = !!FUNC2(tty);
	unsigned int audit_tty;
	dev_t dev;

	audit_tty = FUNC4(current->signal->audit_tty);
	if (~audit_tty & AUDIT_TTY_ENABLE)
		return;

	if (FUNC10(size == 0))
		return;

	if (tty->driver->type == TTY_DRIVER_TYPE_PTY
	    && tty->driver->subtype == PTY_TYPE_MASTER)
		return;

	if ((~audit_tty & AUDIT_TTY_LOG_PASSWD) && icanon && !FUNC1(tty))
		return;

	buf = FUNC8();
	if (FUNC0(buf))
		return;

	FUNC6(&buf->mutex);
	dev = FUNC3(tty->driver->major, tty->driver->minor_start) + tty->index;
	if (buf->dev != dev || buf->icanon != icanon) {
		FUNC9(buf);
		buf->dev = dev;
		buf->icanon = icanon;
	}
	do {
		size_t run;

		run = N_TTY_BUF_SIZE - buf->valid;
		if (run > size)
			run = size;
		FUNC5(buf->data + buf->valid, data, run);
		buf->valid += run;
		data += run;
		size -= run;
		if (buf->valid == N_TTY_BUF_SIZE)
			FUNC9(buf);
	} while (size != 0);
	FUNC7(&buf->mutex);
}