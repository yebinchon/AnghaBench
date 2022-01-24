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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  cda; } ;
struct raw3270_request {size_t size; TYPE_1__ ccw; int /*<<< orphan*/  buffer; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct raw3270_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3270_request*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 struct raw3270_request* FUNC5 (int,int) ; 

struct raw3270_request *
FUNC6(size_t size)
{
	struct raw3270_request *rq;

	/* Allocate request structure */
	rq = FUNC5(sizeof(struct raw3270_request), GFP_KERNEL | GFP_DMA);
	if (!rq)
		return FUNC0(-ENOMEM);

	/* alloc output buffer. */
	if (size > 0) {
		rq->buffer = FUNC4(size, GFP_KERNEL | GFP_DMA);
		if (!rq->buffer) {
			FUNC3(rq);
			return FUNC0(-ENOMEM);
		}
	}
	rq->size = size;
	FUNC1(&rq->list);

	/*
	 * Setup ccw.
	 */
	rq->ccw.cda = FUNC2(rq->buffer);
	rq->ccw.flags = CCW_FLAG_SLI;

	return rq;
}