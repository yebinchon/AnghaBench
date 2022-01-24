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
struct TYPE_3__ {int result; } ;
union outputArgs {TYPE_1__ oh; } ;
struct TYPE_4__ {scalar_t__ unique; int /*<<< orphan*/  opcode; } ;
union inputArgs {TYPE_2__ ih; } ;
struct venus_comm {int /*<<< orphan*/  vc_mutex; int /*<<< orphan*/  vc_waitq; int /*<<< orphan*/  vc_pending; int /*<<< orphan*/  vc_inuse; scalar_t__ vc_seq; } ;
struct upc_req {int uc_flags; int uc_inSize; int uc_outSize; int /*<<< orphan*/  uc_chain; void* uc_data; scalar_t__ uc_unique; int /*<<< orphan*/  uc_opcode; int /*<<< orphan*/  uc_sleep; } ;
struct coda_in_hdr {int dummy; } ;

/* Variables and functions */
 int CODA_REQ_ABORT ; 
 int CODA_REQ_ASYNC ; 
 int CODA_REQ_READ ; 
 int CODA_REQ_WRITE ; 
 int /*<<< orphan*/  CODA_SIGNAL ; 
 int EINTR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct venus_comm*,struct upc_req*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct upc_req*) ; 
 struct upc_req* FUNC3 (int,int /*<<< orphan*/ ) ; 
 union inputArgs* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct venus_comm *vcp,
		       int inSize, int *outSize,
		       union inputArgs *buffer)
{
	union outputArgs *out;
	union inputArgs *sig_inputArgs;
	struct upc_req *req = NULL, *sig_req;
	int error;

	FUNC7(&vcp->vc_mutex);

	if (!vcp->vc_inuse) {
		FUNC10("Venus dead, not sending upcall\n");
		error = -ENXIO;
		goto exit;
	}

	/* Format the request message. */
	req = FUNC3(sizeof(struct upc_req), GFP_KERNEL);
	if (!req) {
		error = -ENOMEM;
		goto exit;
	}

	buffer->ih.unique = ++vcp->vc_seq;

	req->uc_data = (void *)buffer;
	req->uc_flags = outSize ? 0 : CODA_REQ_ASYNC;
	req->uc_inSize = inSize;
	req->uc_outSize = (outSize && *outSize) ? *outSize : inSize;
	req->uc_opcode = buffer->ih.opcode;
	req->uc_unique = buffer->ih.unique;
	FUNC1(&req->uc_sleep);

	/* Append msg to pending queue and poke Venus. */
	FUNC6(&req->uc_chain, &vcp->vc_pending);
	FUNC13(&vcp->vc_waitq);

	if (req->uc_flags & CODA_REQ_ASYNC) {
		FUNC8(&vcp->vc_mutex);
		return 0;
	}

	/* We can be interrupted while we wait for Venus to process
	 * our request.  If the interrupt occurs before Venus has read
	 * the request, we dequeue and return. If it occurs after the
	 * read but before the reply, we dequeue, send a signal
	 * message, and return. If it occurs after the reply we ignore
	 * it. In no case do we want to restart the syscall.  If it
	 * was interrupted by a venus shutdown (psdev_close), return
	 * ENODEV.  */

	/* Go to sleep.  Wake up on signals only after the timeout. */
	FUNC0(vcp, req);

	/* Op went through, interrupt or not... */
	if (req->uc_flags & CODA_REQ_WRITE) {
		out = (union outputArgs *)req->uc_data;
		/* here we map positive Venus errors to kernel errors */
		error = -out->oh.result;
		*outSize = req->uc_outSize;
		goto exit;
	}

	error = -EINTR;
	if ((req->uc_flags & CODA_REQ_ABORT) || !FUNC12(current)) {
		FUNC11("Unexpected interruption.\n");
		goto exit;
	}

	/* Interrupted before venus read it. */
	if (!(req->uc_flags & CODA_REQ_READ))
		goto exit;

	/* Venus saw the upcall, make sure we can send interrupt signal */
	if (!vcp->vc_inuse) {
		FUNC9("Venus dead, not sending signal.\n");
		goto exit;
	}

	error = -ENOMEM;
	sig_req = FUNC3(sizeof(struct upc_req), GFP_KERNEL);
	if (!sig_req) goto exit;

	sig_inputArgs = FUNC4(sizeof(struct coda_in_hdr), GFP_KERNEL);
	if (!sig_inputArgs) {
		FUNC2(sig_req);
		goto exit;
	}

	error = -EINTR;
	sig_inputArgs->ih.opcode = CODA_SIGNAL;
	sig_inputArgs->ih.unique = req->uc_unique;

	sig_req->uc_flags = CODA_REQ_ASYNC;
	sig_req->uc_opcode = sig_inputArgs->ih.opcode;
	sig_req->uc_unique = sig_inputArgs->ih.unique;
	sig_req->uc_data = (void *)sig_inputArgs;
	sig_req->uc_inSize = sizeof(struct coda_in_hdr);
	sig_req->uc_outSize = sizeof(struct coda_in_hdr);

	/* insert at head of queue! */
	FUNC5(&(sig_req->uc_chain), &vcp->vc_pending);
	FUNC13(&vcp->vc_waitq);

exit:
	FUNC2(req);
	FUNC8(&vcp->vc_mutex);
	return error;
}