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
struct esas2r_sg_context {scalar_t__ get_phys_addr; scalar_t__ cur_offset; struct esas2r_adapter* adapter; struct esas2r_request* first_req; } ;
struct esas2r_request {int /*<<< orphan*/  comp_cb; } ;
struct esas2r_adapter {scalar_t__ vda_buffer; scalar_t__ vda_command_done; int /*<<< orphan*/  vda_waiter; } ;
struct atto_ioctl_vda {int dummy; } ;
typedef  scalar_t__ PGETPHYSADDR ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 scalar_t__ VDA_BUFFER_HEADER_SZ ; 
 long VDA_MAX_BUFFER_SIZE ; 
 struct esas2r_request* FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int FUNC3 (struct esas2r_adapter*,struct atto_ioctl_vda*,struct esas2r_request*,struct esas2r_sg_context*) ; 
 scalar_t__ get_physaddr_vda ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  vda_complete_req ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct esas2r_adapter *a, char *buf, long off, int count)
{
	if (!a->vda_buffer)
		return -ENOMEM;

	if (off == 0) {
		struct esas2r_request *rq;
		struct atto_ioctl_vda *vi =
			(struct atto_ioctl_vda *)a->vda_buffer;
		struct esas2r_sg_context sgc;
		bool wait_for_completion;

		/*
		 * Presumeably, someone has already written to the vda_buffer,
		 * and now they are reading the node the response, so now we
		 * will actually issue the request to the chip and reply.
		 */

		/* allocate a request */
		rq = FUNC0(a);
		if (rq == NULL) {
			FUNC1("esas2r_read_vda: out of requests");
			return -EBUSY;
		}

		rq->comp_cb = vda_complete_req;

		sgc.first_req = rq;
		sgc.adapter = a;
		sgc.cur_offset = a->vda_buffer + VDA_BUFFER_HEADER_SZ;
		sgc.get_phys_addr = (PGETPHYSADDR)get_physaddr_vda;

		a->vda_command_done = 0;

		wait_for_completion =
			FUNC3(a, vi, rq, &sgc);

		if (wait_for_completion) {
			/* now wait around for it to complete. */

			while (!a->vda_command_done)
				FUNC5(a->vda_waiter,
							 a->vda_command_done);
		}

		FUNC2(a, (struct esas2r_request *)rq);
	}

	if (off > VDA_MAX_BUFFER_SIZE)
		return 0;

	if (count + off > VDA_MAX_BUFFER_SIZE)
		count = VDA_MAX_BUFFER_SIZE - off;

	if (count < 0)
		return 0;

	FUNC4(buf, a->vda_buffer + off, count);

	return count;
}