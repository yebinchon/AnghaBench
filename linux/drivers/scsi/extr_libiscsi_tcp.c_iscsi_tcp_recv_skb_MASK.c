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
typedef  int /*<<< orphan*/  u8 ;
struct skb_seq_state {int dummy; } ;
struct sk_buff {int len; } ;
struct iscsi_segment {scalar_t__ total_copied; scalar_t__ total_size; scalar_t__ copied; scalar_t__ size; int (* done ) (struct iscsi_tcp_conn*,struct iscsi_segment*) ;} ;
struct TYPE_2__ {struct iscsi_segment segment; } ;
struct iscsi_tcp_conn {TYPE_1__ in; } ;
struct iscsi_conn {unsigned int rxdata_octets; int /*<<< orphan*/  suspend_rx; int /*<<< orphan*/  last_recv; struct iscsi_tcp_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,char*,...) ; 
 int ISCSI_TCP_CONN_ERR ; 
 int ISCSI_TCP_SEGMENT_DONE ; 
 int ISCSI_TCP_SKB_DONE ; 
 int ISCSI_TCP_SUSPENDED ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,int) ; 
 int FUNC3 (struct iscsi_tcp_conn*,struct iscsi_segment*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct skb_seq_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int,int,struct skb_seq_state*) ; 
 unsigned int FUNC6 (unsigned int,int /*<<< orphan*/  const**,struct skb_seq_state*) ; 
 int FUNC7 (struct iscsi_tcp_conn*,struct iscsi_segment*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct iscsi_conn *conn, struct sk_buff *skb,
		       unsigned int offset, bool offloaded, int *status)
{
	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
	struct iscsi_segment *segment = &tcp_conn->in.segment;
	struct skb_seq_state seq;
	unsigned int consumed = 0;
	int rc = 0;

	FUNC1(conn, "in %d bytes\n", skb->len - offset);
	/*
	 * Update for each skb instead of pdu, because over slow networks a
	 * data_in's data could take a while to read in. We also want to
	 * account for r2ts.
	 */
	conn->last_recv = jiffies;

	if (FUNC8(conn->suspend_rx)) {
		FUNC1(conn, "Rx suspended!\n");
		*status = ISCSI_TCP_SUSPENDED;
		return 0;
	}

	if (offloaded) {
		segment->total_copied = segment->total_size;
		goto segment_done;
	}

	FUNC5(skb, offset, skb->len, &seq);
	while (1) {
		unsigned int avail;
		const u8 *ptr;

		avail = FUNC6(consumed, &ptr, &seq);
		if (avail == 0) {
			FUNC1(conn, "no more data avail. Consumed %d\n",
				      consumed);
			*status = ISCSI_TCP_SKB_DONE;
			goto skb_done;
		}
		FUNC0(segment->copied >= segment->size);

		FUNC1(conn, "skb %p ptr=%p avail=%u\n", skb, ptr,
			      avail);
		rc = FUNC3(tcp_conn, segment, ptr, avail);
		FUNC0(rc == 0);
		consumed += rc;

		if (segment->total_copied >= segment->total_size) {
			FUNC4(&seq);
			goto segment_done;
		}
	}

segment_done:
	*status = ISCSI_TCP_SEGMENT_DONE;
	FUNC1(conn, "segment done\n");
	rc = segment->done(tcp_conn, segment);
	if (rc != 0) {
		*status = ISCSI_TCP_CONN_ERR;
		FUNC1(conn, "Error receiving PDU, errno=%d\n", rc);
		FUNC2(conn, rc);
		return 0;
	}
	/* The done() functions sets up the next segment. */

skb_done:
	conn->rxdata_octets += consumed;
	return consumed;
}