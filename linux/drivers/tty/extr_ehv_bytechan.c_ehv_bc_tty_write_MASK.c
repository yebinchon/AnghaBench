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
struct tty_struct {struct ehv_bc_data* driver_data; } ;
struct ehv_bc_data {unsigned int head; int /*<<< orphan*/  lock; scalar_t__ buf; int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 int BUF_SIZE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ehv_bc_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *ttys, const unsigned char *s,
			    int count)
{
	struct ehv_bc_data *bc = ttys->driver_data;
	unsigned long flags;
	unsigned int len;
	unsigned int written = 0;

	while (1) {
		FUNC3(&bc->lock, flags);
		len = FUNC0(bc->head, bc->tail, BUF_SIZE);
		if (count < len)
			len = count;
		if (len) {
			FUNC2(bc->buf + bc->head, s, len);
			bc->head = (bc->head + len) & (BUF_SIZE - 1);
		}
		FUNC4(&bc->lock, flags);
		if (!len)
			break;

		s += len;
		count -= len;
		written += len;
	}

	FUNC1(bc);

	return written;
}