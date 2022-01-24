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
struct qdio_buffer {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QBUFF_PER_PAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_buffer**,unsigned int) ; 

int FUNC2(struct qdio_buffer **buf, unsigned int count)
{
	int pos;

	for (pos = 0; pos < count; pos += QBUFF_PER_PAGE) {
		buf[pos] = (void *) FUNC0(GFP_KERNEL);
		if (!buf[pos]) {
			FUNC1(buf, count);
			return -ENOMEM;
		}
	}
	for (pos = 0; pos < count; pos++)
		if (pos % QBUFF_PER_PAGE)
			buf[pos] = buf[pos - 1] + 1;
	return 0;
}