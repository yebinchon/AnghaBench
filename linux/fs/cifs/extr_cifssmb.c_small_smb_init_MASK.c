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
struct smb_hdr {int dummy; } ;
struct cifs_tcon {int /*<<< orphan*/  num_smbs_sent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct cifs_tcon*,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_hdr*,int,struct cifs_tcon*,int) ; 

__attribute__((used)) static int
FUNC4(int smb_command, int wct, struct cifs_tcon *tcon,
		void **request_buf)
{
	int rc;

	rc = FUNC0(tcon, smb_command);
	if (rc)
		return rc;

	*request_buf = FUNC1();
	if (*request_buf == NULL) {
		/* BB should we add a retry in here if not a writepage? */
		return -ENOMEM;
	}

	FUNC3((struct smb_hdr *) *request_buf, smb_command,
			tcon, wct);

	if (tcon != NULL)
		FUNC2(&tcon->num_smbs_sent);

	return 0;
}