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
struct TYPE_8__ {int /*<<< orphan*/  num_hardlinks; } ;
struct TYPE_9__ {TYPE_2__ cifs_stats; } ;
struct cifs_tcon {TYPE_3__ stats; int /*<<< orphan*/  ses; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {int Flags2; } ;
struct TYPE_10__ {int BufferFormat; int* OldFileName; void* ByteCount; TYPE_1__ hdr; scalar_t__ ClusterCount; void* Flags; void* SearchAttributes; } ;
typedef  int /*<<< orphan*/  RENAME_RSP ;
typedef  TYPE_4__ NT_RENAME_REQ ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int ATTR_HIDDEN ; 
 int ATTR_READONLY ; 
 int ATTR_SYSTEM ; 
 int CREATE_HARD_LINK ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  SMB_COM_NT_RENAME ; 
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ,struct smb_hdr*,struct smb_hdr*,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int*,char const*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,struct cifs_tcon*,void**,void**) ; 

int
FUNC10(const unsigned int xid, struct cifs_tcon *tcon,
		   const char *from_name, const char *to_name,
		   struct cifs_sb_info *cifs_sb)
{
	int rc = 0;
	NT_RENAME_REQ *pSMB = NULL;
	RENAME_RSP *pSMBr = NULL;
	int bytes_returned;
	int name_len, name_len2;
	__u16 count;
	int remap = FUNC4(cifs_sb);

	FUNC3(FYI, "In CIFSCreateHardLink\n");
winCreateHardLinkRetry:

	rc = FUNC9(SMB_COM_NT_RENAME, 4, tcon, (void **) &pSMB,
		      (void **) &pSMBr);
	if (rc)
		return rc;

	pSMB->SearchAttributes =
	    FUNC7(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM |
			ATTR_DIRECTORY);
	pSMB->Flags = FUNC7(CREATE_HARD_LINK);
	pSMB->ClusterCount = 0;

	pSMB->BufferFormat = 0x04;

	if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
		name_len =
		    FUNC1((__le16 *) pSMB->OldFileName, from_name,
				       PATH_MAX, cifs_sb->local_nls, remap);
		name_len++;	/* trailing null */
		name_len *= 2;

		/* protocol specifies ASCII buffer format (0x04) for unicode */
		pSMB->OldFileName[name_len] = 0x04;
		pSMB->OldFileName[name_len + 1] = 0x00; /* pad */
		name_len2 =
		    FUNC1((__le16 *)&pSMB->OldFileName[name_len+2],
				       to_name, PATH_MAX, cifs_sb->local_nls,
				       remap);
		name_len2 += 1 /* trailing null */  + 1 /* Signature word */ ;
		name_len2 *= 2;	/* convert to bytes */
	} else {
		name_len = FUNC6(pSMB->OldFileName, from_name);
		pSMB->OldFileName[name_len] = 0x04;	/* 2nd buffer format */
		name_len2 = FUNC6(pSMB->OldFileName+name_len+1, to_name);
		name_len2++;	/* signature byte */
	}

	count = 1 /* string type byte */  + name_len + name_len2;
	FUNC8(pSMB, count);
	pSMB->ByteCount = FUNC7(count);

	rc = FUNC0(xid, tcon->ses, (struct smb_hdr *) pSMB,
			 (struct smb_hdr *) pSMBr, &bytes_returned, 0);
	FUNC5(&tcon->stats.cifs_stats.num_hardlinks);
	if (rc)
		FUNC3(FYI, "Send error in hard link (NT rename) = %d\n", rc);

	FUNC2(pSMB);
	if (rc == -EAGAIN)
		goto winCreateHardLinkRetry;

	return rc;
}