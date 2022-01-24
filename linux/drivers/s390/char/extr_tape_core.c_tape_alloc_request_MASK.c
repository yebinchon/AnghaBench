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
struct tape_request {int /*<<< orphan*/ * cpdata; struct tape_request* cpaddr; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tape_request* FUNC3 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int PAGE_SIZE ; 
 struct tape_request* FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tape_request*) ; 
 void* FUNC6 (int,int) ; 

struct tape_request *
FUNC7(int cplength, int datasize)
{
	struct tape_request *request;

	FUNC0(datasize > PAGE_SIZE || (cplength*sizeof(struct ccw1)) > PAGE_SIZE);

	FUNC2(6, "tape_alloc_request(%d, %d)\n", cplength, datasize);

	request = FUNC6(sizeof(struct tape_request), GFP_KERNEL);
	if (request == NULL) {
		FUNC1(1, "cqra nomem\n");
		return FUNC3(-ENOMEM);
	}
	/* allocate channel program */
	if (cplength > 0) {
		request->cpaddr = FUNC4(cplength, sizeof(struct ccw1),
					  GFP_ATOMIC | GFP_DMA);
		if (request->cpaddr == NULL) {
			FUNC1(1, "cqra nomem\n");
			FUNC5(request);
			return FUNC3(-ENOMEM);
		}
	}
	/* alloc small kernel buffer */
	if (datasize > 0) {
		request->cpdata = FUNC6(datasize, GFP_KERNEL | GFP_DMA);
		if (request->cpdata == NULL) {
			FUNC1(1, "cqra nomem\n");
			FUNC5(request->cpaddr);
			FUNC5(request);
			return FUNC3(-ENOMEM);
		}
	}
	FUNC2(6, "New request %p(%p/%p)\n", request, request->cpaddr,
		request->cpdata);

	return request;
}