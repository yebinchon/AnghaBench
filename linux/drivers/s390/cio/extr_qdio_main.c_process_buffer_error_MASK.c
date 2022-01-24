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
struct qdio_q {TYPE_2__** sbal; int /*<<< orphan*/  nr; scalar_t__ is_input_q; int /*<<< orphan*/  irq_ptr; int /*<<< orphan*/  qdio_error; } ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  QDIO_ERROR_SLSB_STATE ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 
 unsigned char SLSB_P_INPUT_NOT_INIT ; 
 unsigned char SLSB_P_OUTPUT_NOT_INIT ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*,unsigned int,unsigned char,int) ; 
 int /*<<< orphan*/  target_full ; 

__attribute__((used)) static void FUNC6(struct qdio_q *q, unsigned int start,
				 int count)
{
	unsigned char state = (q->is_input_q) ? SLSB_P_INPUT_NOT_INIT :
					SLSB_P_OUTPUT_NOT_INIT;

	q->qdio_error = QDIO_ERROR_SLSB_STATE;

	/* special handling for no target buffer empty */
	if (FUNC4(q) == QDIO_IQDIO_QFMT && !q->is_input_q &&
	    q->sbal[start]->element[15].sflags == 0x10) {
		FUNC3(q, target_full);
		FUNC0(DBF_INFO, q->irq_ptr, "OUTFULL FTC:%02x", start);
		goto set;
	}

	FUNC1("%4x BUF ERROR", FUNC2(q));
	FUNC1((q->is_input_q) ? "IN:%2d" : "OUT:%2d", q->nr);
	FUNC1("FTC:%3d C:%3d", start, count);
	FUNC1("F14:%2x F15:%2x",
		  q->sbal[start]->element[14].sflags,
		  q->sbal[start]->element[15].sflags);

set:
	/*
	 * Interrupts may be avoided as long as the error is present
	 * so change the buffer state immediately to avoid starvation.
	 */
	FUNC5(q, start, state, count);
}