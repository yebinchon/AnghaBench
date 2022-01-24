#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_deletes; } ;
struct TYPE_9__ {TYPE_2__ cifs_stats; } ;
struct cifs_tcon {TYPE_3__ stats; int /*<<< orphan*/  ses; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {int Flags2; } ;
struct TYPE_10__ {int BufferFormat; void* ByteCount; void* SearchAttributes; scalar_t__ fileName; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  DELETE_FILE_RSP ;
typedef  TYPE_4__ DELETE_FILE_REQ ;

/* Variables and functions */
 int ATTR_HIDDEN ; 
 int ATTR_READONLY ; 
 int ATTR_SYSTEM ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  SMB_COM_DELETE ; 
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ,struct smb_hdr*,struct smb_hdr*,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,char const*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,struct cifs_tcon*,void**,void**) ; 

int
FUNC10(const unsigned int xid, struct cifs_tcon *tcon, const char *name,
	       struct cifs_sb_info *cifs_sb)
{
	DELETE_FILE_REQ *pSMB = NULL;
	DELETE_FILE_RSP *pSMBr = NULL;
	int rc = 0;
	int bytes_returned;
	int name_len;
	int remap = FUNC4(cifs_sb);

DelFileRetry:
	rc = FUNC9(SMB_COM_DELETE, 1, tcon, (void **) &pSMB,
		      (void **) &pSMBr);
	if (rc)
		return rc;

	if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
		name_len = FUNC1((__le16 *) pSMB->fileName, name,
					      PATH_MAX, cifs_sb->local_nls,
					      remap);
		name_len++;	/* trailing null */
		name_len *= 2;
	} else {
		name_len = FUNC6(pSMB->fileName, name);
	}
	pSMB->SearchAttributes =
	    FUNC7(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM);
	pSMB->BufferFormat = 0x04;
	FUNC8(pSMB, name_len + 1);
	pSMB->ByteCount = FUNC7(name_len + 1);
	rc = FUNC0(xid, tcon->ses, (struct smb_hdr *) pSMB,
			 (struct smb_hdr *) pSMBr, &bytes_returned, 0);
	FUNC5(&tcon->stats.cifs_stats.num_deletes);
	if (rc)
		FUNC3(FYI, "Error in RMFile = %d\n", rc);

	FUNC2(pSMB);
	if (rc == -EAGAIN)
		goto DelFileRetry;

	return rc;
}