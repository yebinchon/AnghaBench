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
struct socket {int dummy; } ;
struct scatterlist {scalar_t__ offset; } ;
struct msghdr {int msg_flags; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {int (* sendpage ) (struct socket*,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ;struct socket* sock; } ;
struct iscsi_segment {unsigned int copied; unsigned int size; scalar_t__ total_copied; scalar_t__ total_size; scalar_t__ data; scalar_t__ sg_offset; struct scatterlist* sg; } ;

/* Variables and functions */
 int MSG_MORE ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_tcp_conn*,struct iscsi_segment*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_segment*) ; 
 int FUNC2 (struct socket*,struct msghdr*,struct kvec*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC5(struct iscsi_tcp_conn *tcp_conn,
				     struct iscsi_segment *segment)
{
	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
	struct socket *sk = tcp_sw_conn->sock;
	unsigned int copied = 0;
	int r = 0;

	while (!FUNC0(tcp_conn, segment, 0, r)) {
		struct scatterlist *sg;
		unsigned int offset, copy;
		int flags = 0;

		r = 0;
		offset = segment->copied;
		copy = segment->size - offset;

		if (segment->total_copied + segment->size < segment->total_size)
			flags |= MSG_MORE;

		/* Use sendpage if we can; else fall back to sendmsg */
		if (!segment->data) {
			sg = segment->sg;
			offset += segment->sg_offset + sg->offset;
			r = tcp_sw_conn->sendpage(sk, FUNC3(sg), offset,
						  copy, flags);
		} else {
			struct msghdr msg = { .msg_flags = flags };
			struct kvec iov = {
				.iov_base = segment->data + offset,
				.iov_len = copy
			};

			r = FUNC2(sk, &msg, &iov, 1, copy);
		}

		if (r < 0) {
			FUNC1(segment);
			return r;
		}
		copied += r;
	}
	return copied;
}