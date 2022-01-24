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
typedef  int u32 ;
struct kvec {unsigned char* iov_base; int iov_len; } ;
struct iscsi_nopout {scalar_t__ ttt; unsigned char* cmdsn; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_3__* sess; int /*<<< orphan*/  conn_rx_hash; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {unsigned char pad_bytes; unsigned char* buf_ptr; int buf_ptr_size; struct kvec* iov_misc; } ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;
struct TYPE_4__ {scalar_t__ DataDigest; } ;

/* Variables and functions */
 int FUNC0 (struct kvec*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ISCSI_CRC_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int,int,unsigned char,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*,int) ; 
 int FUNC5 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ; 
 int FUNC6 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (struct iscsi_conn*,struct kvec*,int,int) ; 

__attribute__((used)) static int FUNC13(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
				 unsigned char *buf)
{
	unsigned char *ping_data = NULL;
	struct iscsi_nopout *hdr = (struct iscsi_nopout *)buf;
	struct kvec *iov = NULL;
	u32 payload_length = FUNC9(hdr->dlength);
	int ret;

	ret = FUNC6(conn, cmd, hdr);
	if (ret < 0)
		return 0;
	/*
	 * Handle NOP-OUT payload for traditional iSCSI sockets
	 */
	if (payload_length && hdr->ttt == FUNC2(0xFFFFFFFF)) {
		u32 checksum, data_crc, padding = 0;
		int niov = 0, rx_got, rx_size = payload_length;

		ping_data = FUNC8(payload_length + 1, GFP_KERNEL);
		if (!ping_data) {
			ret = -1;
			goto out;
		}

		iov = &cmd->iov_misc[0];
		iov[niov].iov_base	= ping_data;
		iov[niov++].iov_len	= payload_length;

		padding = ((-payload_length) & 3);
		if (padding != 0) {
			FUNC10("Receiving %u additional bytes"
				" for padding.\n", padding);
			iov[niov].iov_base	= &cmd->pad_bytes;
			iov[niov++].iov_len	= padding;
			rx_size += padding;
		}
		if (conn->conn_ops->DataDigest) {
			iov[niov].iov_base	= &checksum;
			iov[niov++].iov_len	= ISCSI_CRC_LEN;
			rx_size += ISCSI_CRC_LEN;
		}

		FUNC1(niov > FUNC0(cmd->iov_misc));
		rx_got = FUNC12(conn, &cmd->iov_misc[0], niov, rx_size);
		if (rx_got != rx_size) {
			ret = -1;
			goto out;
		}

		if (conn->conn_ops->DataDigest) {
			FUNC3(conn->conn_rx_hash, ping_data,
						  payload_length, padding,
						  cmd->pad_bytes, &data_crc);

			if (checksum != data_crc) {
				FUNC11("Ping data CRC32C DataDigest"
				" 0x%08x does not match computed 0x%08x\n",
					checksum, data_crc);
				if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
					FUNC11("Unable to recover from"
					" NOPOUT Ping DataCRC failure while in"
						" ERL=0.\n");
					ret = -1;
					goto out;
				} else {
					/*
					 * Silently drop this PDU and let the
					 * initiator plug the CmdSN gap.
					 */
					FUNC10("Dropping NOPOUT"
					" Command CmdSN: 0x%08x due to"
					" DataCRC error.\n", hdr->cmdsn);
					ret = 0;
					goto out;
				}
			} else {
				FUNC10("Got CRC32C DataDigest"
				" 0x%08x for %u bytes of ping data.\n",
					checksum, payload_length);
			}
		}

		ping_data[payload_length] = '\0';
		/*
		 * Attach ping data to struct iscsi_cmd->buf_ptr.
		 */
		cmd->buf_ptr = ping_data;
		cmd->buf_ptr_size = payload_length;

		FUNC10("Got %u bytes of NOPOUT ping"
			" data.\n", payload_length);
		FUNC10("Ping Data: \"%s\"\n", ping_data);
	}

	return FUNC5(conn, cmd, hdr);
out:
	if (cmd)
		FUNC4(cmd, false);

	FUNC7(ping_data);
	return ret;
}