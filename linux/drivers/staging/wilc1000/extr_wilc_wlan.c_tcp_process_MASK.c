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
typedef  int u32 ;
struct tcp_ack_filter {int tcp_session; TYPE_1__* ack_session_info; } ;
struct wilc_vif {struct tcp_ack_filter ack_filter; struct wilc* wilc; } ;
struct wilc {int /*<<< orphan*/  txq_spinlock; } ;
struct txq_entry_t {void* buffer; } ;
struct tcphdr {int doff; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ protocol; int ihl; int /*<<< orphan*/  tot_len; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct TYPE_2__ {int seq_num; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 int MAX_TCP_SESSION ; 
 int /*<<< orphan*/  FUNC0 (struct wilc_vif*,int,int,struct txq_entry_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct wilc_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct wilc_vif* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct wilc_vif*,int,int) ; 

__attribute__((used)) static inline void FUNC9(struct net_device *dev, struct txq_entry_t *tqe)
{
	void *buffer = tqe->buffer;
	const struct ethhdr *eth_hdr_ptr = buffer;
	int i;
	unsigned long flags;
	struct wilc_vif *vif = FUNC3(dev);
	struct wilc *wilc = vif->wilc;
	struct tcp_ack_filter *f = &vif->ack_filter;
	const struct iphdr *ip_hdr_ptr;
	const struct tcphdr *tcp_hdr_ptr;
	u32 ihl, total_length, data_offset;

	FUNC6(&wilc->txq_spinlock, flags);

	if (eth_hdr_ptr->h_proto != FUNC2(ETH_P_IP))
		goto out;

	ip_hdr_ptr = buffer + ETH_HLEN;

	if (ip_hdr_ptr->protocol != IPPROTO_TCP)
		goto out;

	ihl = ip_hdr_ptr->ihl << 2;
	tcp_hdr_ptr = buffer + ETH_HLEN + ihl;
	total_length = FUNC5(ip_hdr_ptr->tot_len);

	data_offset = tcp_hdr_ptr->doff << 2;
	if (total_length == (ihl + data_offset)) {
		u32 seq_no, ack_no;

		seq_no = FUNC4(tcp_hdr_ptr->seq);
		ack_no = FUNC4(tcp_hdr_ptr->ack_seq);
		for (i = 0; i < f->tcp_session; i++) {
			u32 j = f->ack_session_info[i].seq_num;

			if (i < 2 * MAX_TCP_SESSION &&
			    j == seq_no) {
				FUNC8(vif, i, ack_no);
				break;
			}
		}
		if (i == f->tcp_session)
			FUNC1(vif, 0, 0, seq_no);

		FUNC0(vif, ack_no, i, tqe);
	}

out:
	FUNC7(&wilc->txq_spinlock, flags);
}