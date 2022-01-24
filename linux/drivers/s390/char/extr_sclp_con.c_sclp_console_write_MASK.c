#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct console {int dummy; } ;
struct TYPE_3__ {void* next; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sclp_con_columns ; 
 int /*<<< orphan*/  sclp_con_lock ; 
 TYPE_1__ sclp_con_pages ; 
 scalar_t__ sclp_con_suspended ; 
 int /*<<< orphan*/  sclp_con_timer ; 
 int /*<<< orphan*/  sclp_con_width_htab ; 
 int /*<<< orphan*/ * sclp_conbuf ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  sclp_console_full ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct console *console, const char *message,
		   unsigned int count)
{
	unsigned long flags;
	void *page;
	int written;

	if (count == 0)
		return;
	FUNC9(&sclp_con_lock, flags);
	/*
	 * process escape characters, write message into buffer,
	 * send buffer to SCLP
	 */
	do {
		/* make sure we have a console output buffer */
		if (sclp_conbuf == NULL) {
			if (FUNC1(&sclp_con_pages))
				sclp_console_full++;
			while (FUNC1(&sclp_con_pages)) {
				if (sclp_con_suspended)
					goto out;
				if (FUNC5())
					break;
				FUNC10(&sclp_con_lock, flags);
				FUNC7();
				FUNC9(&sclp_con_lock, flags);
			}
			page = sclp_con_pages.next;
			FUNC0((struct list_head *) page);
			sclp_conbuf = FUNC6(page, sclp_con_columns,
						       sclp_con_width_htab);
		}
		/* try to write the string to the current output buffer */
		written = FUNC8(sclp_conbuf, (const unsigned char *)
				     message, count);
		if (written == count)
			break;
		/*
		 * Not all characters could be written to the current
		 * output buffer. Emit the buffer, create a new buffer
		 * and then output the rest of the string.
		 */
		FUNC10(&sclp_con_lock, flags);
		FUNC4();
		FUNC9(&sclp_con_lock, flags);
		message += written;
		count -= written;
	} while (count > 0);
	/* Setup timer to output current console buffer after 1/10 second */
	if (sclp_conbuf != NULL && FUNC3(sclp_conbuf) != 0 &&
	    !FUNC11(&sclp_con_timer)) {
		FUNC2(&sclp_con_timer, jiffies + HZ / 10);
	}
out:
	FUNC10(&sclp_con_lock, flags);
}