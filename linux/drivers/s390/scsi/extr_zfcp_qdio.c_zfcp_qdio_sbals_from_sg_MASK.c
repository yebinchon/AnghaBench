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
struct zfcp_qdio_req {int /*<<< orphan*/  sbal_number; int /*<<< orphan*/  sbal_first; int /*<<< orphan*/  sbtype; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q; int /*<<< orphan*/  req_q_full; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct qdio_buffer_element {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; int /*<<< orphan*/  sflags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 struct qdio_buffer_element* FUNC3 (struct zfcp_qdio*,struct zfcp_qdio_req*) ; 
 struct qdio_buffer_element* FUNC4 (struct zfcp_qdio*,struct zfcp_qdio_req*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct zfcp_qdio *qdio, struct zfcp_qdio_req *q_req,
			    struct scatterlist *sg)
{
	struct qdio_buffer_element *sbale;

	/* set storage-block type for this request */
	sbale = FUNC4(qdio, q_req);
	sbale->sflags |= q_req->sbtype;

	for (; sg; sg = FUNC1(sg)) {
		sbale = FUNC3(qdio, q_req);
		if (!sbale) {
			FUNC0(&qdio->req_q_full);
			FUNC5(qdio->req_q, q_req->sbal_first,
					     q_req->sbal_number);
			return -EINVAL;
		}
		sbale->addr = FUNC2(sg);
		sbale->length = sg->length;
	}
	return 0;
}