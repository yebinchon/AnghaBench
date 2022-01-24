#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct kvec {char* iov_base; scalar_t__ iov_len; } ;
struct iscsi_conn {TYPE_3__* conn_ops; TYPE_2__* sess; } ;
struct TYPE_6__ {scalar_t__ DataDigest; } ;
struct TYPE_5__ {TYPE_1__* sess_ops; } ;
struct TYPE_4__ {scalar_t__ RDMAExtensions; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int DATAOUT_CANNOT_RECOVER ; 
 int DATAOUT_WITHIN_COMMAND_RECOVERY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ ISCSI_CRC_LEN ; 
 scalar_t__ OFFLOAD_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvec*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int FUNC6 (struct iscsi_conn*,struct kvec*,int,scalar_t__) ; 

int FUNC7(
	struct iscsi_conn *conn,
	u32 buf_len,
	int dump_padding_digest)
{
	char *buf;
	int ret = DATAOUT_WITHIN_COMMAND_RECOVERY, rx_got;
	u32 length, offset = 0, size;
	struct kvec iov;

	if (conn->sess->sess_ops->RDMAExtensions)
		return 0;

	if (dump_padding_digest) {
		buf_len = FUNC0(buf_len, 4);
		if (conn->conn_ops->DataDigest)
			buf_len += ISCSI_CRC_LEN;
	}

	length = FUNC4(buf_len, OFFLOAD_BUF_SIZE);

	buf = FUNC2(length, GFP_ATOMIC);
	if (!buf) {
		FUNC5("Unable to allocate %u bytes for offload"
				" buffer.\n", length);
		return -1;
	}
	FUNC3(&iov, 0, sizeof(struct kvec));

	while (offset < buf_len) {
		size = FUNC4(buf_len - offset, length);

		iov.iov_len = size;
		iov.iov_base = buf;

		rx_got = FUNC6(conn, &iov, 1, size);
		if (rx_got != size) {
			ret = DATAOUT_CANNOT_RECOVER;
			break;
		}

		offset += size;
	}

	FUNC1(buf);
	return ret;
}