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
struct qdio_q {int /*<<< orphan*/  nr; int /*<<< orphan*/  irq_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int EBUSY ; 
 int EIO ; 
 int ENOBUFS ; 
 int QDIO_BUSY_BIT_RETRIES ; 
 int /*<<< orphan*/  QDIO_BUSY_BIT_RETRY_DELAY ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*) ; 
 int FUNC5 (struct qdio_q*,unsigned int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siga_write ; 

__attribute__((used)) static int FUNC7(struct qdio_q *q, unsigned long aob)
{
	int retries = 0, cc;
	unsigned int busy_bit;

	if (!FUNC4(q))
		return 0;

	FUNC0(DBF_INFO, q->irq_ptr, "siga-w:%1d", q->nr);
retry:
	FUNC6(q, siga_write);

	cc = FUNC5(q, &busy_bit, aob);
	switch (cc) {
	case 0:
		break;
	case 2:
		if (busy_bit) {
			while (++retries < QDIO_BUSY_BIT_RETRIES) {
				FUNC3(QDIO_BUSY_BIT_RETRY_DELAY);
				goto retry;
			}
			FUNC1("%4x cc2 BBC:%1d", FUNC2(q), q->nr);
			cc = -EBUSY;
		} else {
			FUNC0(DBF_INFO, q->irq_ptr, "siga-w cc2:%1d", q->nr);
			cc = -ENOBUFS;
		}
		break;
	case 1:
	case 3:
		FUNC1("%4x SIGA-W:%1d", FUNC2(q), cc);
		cc = -EIO;
		break;
	}
	if (retries) {
		FUNC1("%4x cc2 BB2:%1d", FUNC2(q), q->nr);
		FUNC1("count:%u", retries);
	}
	return cc;
}