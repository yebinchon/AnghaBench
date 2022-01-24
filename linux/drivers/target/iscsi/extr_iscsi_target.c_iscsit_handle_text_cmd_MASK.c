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
struct kvec {char* iov_base; int iov_len; } ;
struct iscsi_text {int cmdsn; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_3__* sess; int /*<<< orphan*/  conn_rx_hash; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {char* text_in_ptr; } ;
typedef  int /*<<< orphan*/  iov ;
struct TYPE_6__ {TYPE_2__* sess_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;
struct TYPE_4__ {scalar_t__ DataDigest; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct kvec*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ISCSI_CRC_LEN ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_text*) ; 
 int FUNC5 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC6 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_text*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvec*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (struct iscsi_conn*,struct kvec*,int,int) ; 

__attribute__((used)) static int
FUNC14(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
		       unsigned char *buf)
{
	struct iscsi_text *hdr = (struct iscsi_text *)buf;
	char *text_in = NULL;
	u32 payload_length = FUNC10(hdr->dlength);
	int rx_size, rc;

	rc = FUNC6(conn, cmd, hdr);
	if (rc < 0)
		return 0;

	rx_size = payload_length;
	if (payload_length) {
		u32 checksum = 0, data_crc = 0;
		u32 padding = 0;
		int niov = 0, rx_got;
		struct kvec iov[2];

		rx_size = FUNC0(payload_length, 4);
		text_in = FUNC8(rx_size, GFP_KERNEL);
		if (!text_in)
			goto reject;

		cmd->text_in_ptr = text_in;

		FUNC9(iov, 0, sizeof(iov));
		iov[niov].iov_base	= text_in;
		iov[niov++].iov_len	= rx_size;

		padding = rx_size - payload_length;
		if (padding)
			FUNC11("Receiving %u additional bytes"
					" for padding.\n", padding);
		if (conn->conn_ops->DataDigest) {
			iov[niov].iov_base	= &checksum;
			iov[niov++].iov_len	= ISCSI_CRC_LEN;
			rx_size += ISCSI_CRC_LEN;
		}

		FUNC2(niov > FUNC1(iov));
		rx_got = FUNC13(conn, &iov[0], niov, rx_size);
		if (rx_got != rx_size)
			goto reject;

		if (conn->conn_ops->DataDigest) {
			FUNC3(conn->conn_rx_hash,
						  text_in, rx_size, 0, NULL,
						  &data_crc);

			if (checksum != data_crc) {
				FUNC12("Text data CRC32C DataDigest"
					" 0x%08x does not match computed"
					" 0x%08x\n", checksum, data_crc);
				if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
					FUNC12("Unable to recover from"
					" Text Data digest failure while in"
						" ERL=0.\n");
					goto reject;
				} else {
					/*
					 * Silently drop this PDU and let the
					 * initiator plug the CmdSN gap.
					 */
					FUNC11("Dropping Text"
					" Command CmdSN: 0x%08x due to"
					" DataCRC error.\n", hdr->cmdsn);
					FUNC7(text_in);
					return 0;
				}
			} else {
				FUNC11("Got CRC32C DataDigest"
					" 0x%08x for %u bytes of text data.\n",
						checksum, payload_length);
			}
		}
		text_in[payload_length - 1] = '\0';
		FUNC11("Successfully read %d bytes of text"
				" data.\n", payload_length);
	}

	return FUNC4(conn, cmd, hdr);

reject:
	FUNC7(cmd->text_in_ptr);
	cmd->text_in_ptr = NULL;
	return FUNC5(cmd, ISCSI_REASON_PROTOCOL_ERROR, buf);
}