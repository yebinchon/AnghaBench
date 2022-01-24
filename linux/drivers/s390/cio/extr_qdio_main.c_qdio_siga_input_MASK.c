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
typedef  unsigned long u32 ;
struct qdio_q {int /*<<< orphan*/  mask; TYPE_1__* irq_ptr; int /*<<< orphan*/  nr; } ;
struct TYPE_2__ {unsigned long sch_token; int /*<<< orphan*/  schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int EIO ; 
 unsigned int QDIO_SIGA_QEBSM_FLAG ; 
 unsigned int QDIO_SIGA_READ ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siga_read ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(struct qdio_q *q)
{
	unsigned long schid = *((u32 *) &q->irq_ptr->schid);
	unsigned int fc = QDIO_SIGA_READ;
	int cc;

	FUNC0(DBF_INFO, q->irq_ptr, "siga-r:%1d", q->nr);
	FUNC5(q, siga_read);

	if (FUNC4(q)) {
		schid = q->irq_ptr->sch_token;
		fc |= QDIO_SIGA_QEBSM_FLAG;
	}

	cc = FUNC3(schid, q->mask, fc);
	if (FUNC6(cc))
		FUNC1("%4x SIGA-R:%2d", FUNC2(q), cc);
	return (cc) ? -EIO : 0;
}