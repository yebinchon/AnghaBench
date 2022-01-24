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
struct sclp_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sclp_buffer*,int /*<<< orphan*/  (*) (struct sclp_buffer*,int)) ; 
 int /*<<< orphan*/  sclp_tty_buffer_count ; 
 int /*<<< orphan*/  sclp_tty_lock ; 
 int /*<<< orphan*/  sclp_tty_outqueue ; 
 int /*<<< orphan*/  FUNC2 (struct sclp_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC5(struct sclp_buffer *buffer)
{
	unsigned long flags;
	int count;
	int rc;

	FUNC3(&sclp_tty_lock, flags);
	FUNC0(&buffer->list, &sclp_tty_outqueue);
	count = sclp_tty_buffer_count++;
	FUNC4(&sclp_tty_lock, flags);
	if (count)
		return;
	rc = FUNC1(buffer, sclp_ttybuf_callback);
	if (rc)
		FUNC2(buffer, rc);
}