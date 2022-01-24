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
struct sclp_buffer {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {void* next; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SPACES_PER_TAB ; 
 int /*<<< orphan*/  FUNC0 (struct sclp_buffer*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sclp_buffer*) ; 
 struct sclp_buffer* FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  sclp_tty_columns ; 
 int /*<<< orphan*/  sclp_tty_lock ; 
 TYPE_1__ sclp_tty_pages ; 
 int /*<<< orphan*/  sclp_tty_timer ; 
 struct sclp_buffer* sclp_ttybuf ; 
 int FUNC7 (struct sclp_buffer*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(const unsigned char *str, int count, int may_fail)
{
	unsigned long flags;
	void *page;
	int written;
	int overall_written;
	struct sclp_buffer *buf;

	if (count <= 0)
		return 0;
	overall_written = 0;
	FUNC8(&sclp_tty_lock, flags);
	do {
		/* Create a sclp output buffer if none exists yet */
		if (sclp_ttybuf == NULL) {
			while (FUNC2(&sclp_tty_pages)) {
				FUNC9(&sclp_tty_lock, flags);
				if (may_fail)
					goto out;
				else
					FUNC6();
				FUNC8(&sclp_tty_lock, flags);
			}
			page = sclp_tty_pages.next;
			FUNC1((struct list_head *) page);
			sclp_ttybuf = FUNC5(page, sclp_tty_columns,
						       SPACES_PER_TAB);
		}
		/* try to write the string to the current output buffer */
		written = FUNC7(sclp_ttybuf, str, count);
		overall_written += written;
		if (written == count)
			break;
		/*
		 * Not all characters could be written to the current
		 * output buffer. Emit the buffer, create a new buffer
		 * and then output the rest of the string.
		 */
		buf = sclp_ttybuf;
		sclp_ttybuf = NULL;
		FUNC9(&sclp_tty_lock, flags);
		FUNC0(buf);
		FUNC8(&sclp_tty_lock, flags);
		str += written;
		count -= written;
	} while (count > 0);
	/* Setup timer to output current console buffer after 1/10 second */
	if (sclp_ttybuf && FUNC4(sclp_ttybuf) &&
	    !FUNC10(&sclp_tty_timer)) {
		FUNC3(&sclp_tty_timer, jiffies + HZ / 10);
	}
	FUNC9(&sclp_tty_lock, flags);
out:
	return overall_written;
}