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
typedef  size_t uint16_t ;
struct smb2_sync_hdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * smb2_com_sent; } ;
struct TYPE_4__ {TYPE_1__ smb2_stats; } ;
struct cifs_tcon {int /*<<< orphan*/  num_smbs_sent; TYPE_2__ stats; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ SMB2_SET_INFO ; 
 void* FUNC0 () ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct cifs_tcon*,struct smb2_sync_hdr*,unsigned int*) ; 
 size_t FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,struct cifs_tcon*) ; 

__attribute__((used)) static int
FUNC6(__le16 smb2_command, struct cifs_tcon *tcon,
		    void **request_buf, unsigned int *total_len)
{
	int rc;

	rc = FUNC5(smb2_command, tcon);
	if (rc)
		return rc;

	/* BB eventually switch this to SMB2 specific small buf size */
	if (smb2_command == SMB2_SET_INFO)
		*request_buf = FUNC0();
	else
		*request_buf = FUNC1();
	if (*request_buf == NULL) {
		/* BB should we add a retry in here if not a writepage? */
		return -ENOMEM;
	}

	FUNC3(smb2_command, tcon,
		       (struct smb2_sync_hdr *)(*request_buf),
		       total_len);

	if (tcon != NULL) {
		uint16_t com_code = FUNC4(smb2_command);
		FUNC2(&tcon->stats.smb2_stats.smb2_com_sent[com_code]);
		FUNC2(&tcon->num_smbs_sent);
	}

	return rc;
}