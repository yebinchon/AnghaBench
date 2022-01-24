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
struct timer_list {int dummy; } ;
struct sclp_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sclp_buffer*) ; 
 int /*<<< orphan*/  sclp_tty_lock ; 
 struct sclp_buffer* sclp_ttybuf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct timer_list *unused)
{
	unsigned long flags;
	struct sclp_buffer *buf;

	FUNC1(&sclp_tty_lock, flags);
	buf = sclp_ttybuf;
	sclp_ttybuf = NULL;
	FUNC2(&sclp_tty_lock, flags);

	if (buf != NULL) {
		FUNC0(buf);
	}
}