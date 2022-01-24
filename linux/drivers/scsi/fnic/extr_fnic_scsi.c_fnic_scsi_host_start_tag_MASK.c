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
struct scsi_cmnd {int tag; unsigned char* host_scribble; TYPE_1__* request; } ;
struct request_queue {int dummy; } ;
struct request {int tag; } ;
struct fnic {int dummy; } ;
struct TYPE_2__ {int tag; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_REQ_NOWAIT ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int SCSI_NO_TAG ; 
 struct request* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct fnic *fnic, struct scsi_cmnd *sc)
{
	struct request_queue *q = sc->request->q;
	struct request *dummy;

	dummy = FUNC1(q, REQ_OP_WRITE, BLK_MQ_REQ_NOWAIT);
	if (FUNC0(dummy))
		return SCSI_NO_TAG;

	sc->tag = sc->request->tag = dummy->tag;
	sc->host_scribble = (unsigned char *)dummy;

	return dummy->tag;
}