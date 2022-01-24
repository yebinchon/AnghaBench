#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;
struct sess_data {TYPE_1__* iov; int /*<<< orphan*/  buf0_type; int /*<<< orphan*/  ses; int /*<<< orphan*/  xid; } ;
struct kvec {int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  scalar_t__ __u16 ;
struct TYPE_3__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct kvec*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct smb_hdr*) ; 

__attribute__((used)) static int
FUNC6(struct sess_data *sess_data)
{
	int rc;
	struct smb_hdr *smb_buf = (struct smb_hdr *) sess_data->iov[0].iov_base;
	__u16 count;
	struct kvec rsp_iov = { NULL, 0 };

	count = sess_data->iov[1].iov_len + sess_data->iov[2].iov_len;
	smb_buf->smb_buf_length =
		FUNC3(FUNC1(smb_buf->smb_buf_length) + count);
	FUNC5(count, smb_buf);

	rc = FUNC0(sess_data->xid, sess_data->ses,
			  sess_data->iov, 3 /* num_iovecs */,
			  &sess_data->buf0_type,
			  CIFS_LOG_ERROR, &rsp_iov);
	FUNC2(sess_data->iov[0].iov_base);
	FUNC4(&sess_data->iov[0], &rsp_iov, sizeof(struct kvec));

	return rc;
}