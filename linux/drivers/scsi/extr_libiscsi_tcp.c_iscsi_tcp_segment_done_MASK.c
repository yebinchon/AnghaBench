#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct iscsi_tcp_conn {TYPE_5__* iscsi_conn; } ;
struct iscsi_segment {unsigned int copied; unsigned int size; unsigned int data; unsigned int sg_offset; unsigned int total_copied; scalar_t__ total_size; unsigned int padbuf; int /*<<< orphan*/ * digest; int /*<<< orphan*/ * recv_digest; scalar_t__ hash; TYPE_3__* sg; } ;
struct TYPE_9__ {TYPE_2__* session; } ;
struct TYPE_8__ {unsigned int offset; } ;
struct TYPE_7__ {TYPE_1__* tt; } ;
struct TYPE_6__ {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CAP_PADDING_OFFLOAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_segment*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_segment*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_segment*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_segment*) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

int FUNC15(struct iscsi_tcp_conn *tcp_conn,
			   struct iscsi_segment *segment, int recv,
			   unsigned copied)
{
	struct scatterlist sg;
	unsigned int pad;

	FUNC1(tcp_conn->iscsi_conn, "copied %u %u size %u %s\n",
		      segment->copied, copied, segment->size,
		      recv ? "recv" : "xmit");
	if (segment->hash && copied) {
		/*
		 * If a segment is kmapd we must unmap it before sending
		 * to the crypto layer since that will try to kmap it again.
		 */
		FUNC9(segment);

		if (!segment->data) {
			FUNC11(&sg, 1);
			FUNC14(&sg, FUNC13(segment->sg), copied,
				    segment->copied + segment->sg_offset +
							segment->sg->offset);
		} else
			FUNC10(&sg, segment->data + segment->copied,
				    copied);
		FUNC2(segment->hash, &sg, NULL, copied);
		FUNC4(segment->hash);
	}

	segment->copied += copied;
	if (segment->copied < segment->size) {
		FUNC7(segment, recv);
		return 0;
	}

	segment->total_copied += segment->copied;
	segment->copied = 0;
	segment->size = 0;

	/* Unmap the current scatterlist page, if there is one. */
	FUNC9(segment);

	/* Do we have more scatterlist entries? */
	FUNC1(tcp_conn->iscsi_conn, "total copied %u total size %u\n",
		      segment->total_copied, segment->total_size);
	if (segment->total_copied < segment->total_size) {
		/* Proceed to the next entry in the scatterlist. */
		FUNC6(segment, FUNC12(segment->sg),
					  0);
		FUNC7(segment, recv);
		FUNC0(segment->size == 0);
		return 0;
	}

	/* Do we need to handle padding? */
	if (!(tcp_conn->iscsi_conn->session->tt->caps & CAP_PADDING_OFFLOAD)) {
		pad = FUNC5(segment->total_copied);
		if (pad != 0) {
			FUNC1(tcp_conn->iscsi_conn,
				      "consume %d pad bytes\n", pad);
			segment->total_size += pad;
			segment->size = pad;
			segment->data = segment->padbuf;
			return 0;
		}
	}

	/*
	 * Set us up for transferring the data digest. hdr digest
	 * is completely handled in hdr done function.
	 */
	if (segment->hash) {
		FUNC2(segment->hash, NULL,
					segment->digest, 0);
		FUNC3(segment->hash);
		FUNC8(segment,
				 recv ? segment->recv_digest : segment->digest);
		return 0;
	}

	return 1;
}