#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_audit_buf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int /*<<< orphan*/  tty_audit_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tty_audit_buf*) ; 
 TYPE_2__* current ; 
 struct tty_audit_buf* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tty_audit_buf*) ; 
 struct tty_audit_buf* FUNC4 () ; 

__attribute__((used)) static struct tty_audit_buf *FUNC5(void)
{
	struct tty_audit_buf *buf;

	buf = FUNC4();
	if (buf)
		return buf;

	buf = FUNC2();
	if (buf == NULL) {
		FUNC0("out of memory in TTY auditing");
		return NULL;
	}

	/* Race to use this buffer, free it if another wins */
	if (FUNC1(&current->signal->tty_audit_buf, NULL, buf) != NULL)
		FUNC3(buf);
	return FUNC4();
}