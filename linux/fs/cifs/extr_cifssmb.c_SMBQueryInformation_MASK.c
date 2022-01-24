#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int /*<<< orphan*/  tv_sec; scalar_t__ tv_nsec; } ;
struct smb_hdr {int dummy; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int /*<<< orphan*/  ses; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_12__ {int /*<<< orphan*/  Attributes; void* AllocationSize; void* EndOfFile; scalar_t__ LastAccessTime; void* ChangeTime; void* LastWriteTime; } ;
struct TYPE_9__ {int Flags2; } ;
struct TYPE_11__ {int BufferFormat; int /*<<< orphan*/  ByteCount; scalar_t__ FileName; TYPE_1__ hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  size; int /*<<< orphan*/  last_write_time; } ;
typedef  TYPE_2__ QUERY_INFORMATION_RSP ;
typedef  TYPE_3__ QUERY_INFORMATION_REQ ;
typedef  TYPE_4__ FILE_ALL_INFO ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  SMB_COM_QUERY_INFORMATION ; 
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ,struct smb_hdr*,struct smb_hdr*,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifs_tcon*,void**,void**) ; 

int
FUNC14(const unsigned int xid, struct cifs_tcon *tcon,
		    const char *search_name, FILE_ALL_INFO *data,
		    const struct nls_table *nls_codepage, int remap)
{
	QUERY_INFORMATION_REQ *pSMB;
	QUERY_INFORMATION_RSP *pSMBr;
	int rc = 0;
	int bytes_returned;
	int name_len;

	FUNC4(FYI, "In SMBQPath path %s\n", search_name);
QInfRetry:
	rc = FUNC13(SMB_COM_QUERY_INFORMATION, 0, tcon, (void **) &pSMB,
		      (void **) &pSMBr);
	if (rc)
		return rc;

	if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
		name_len =
			FUNC1((__le16 *) pSMB->FileName,
					   search_name, PATH_MAX, nls_codepage,
					   remap);
		name_len++;     /* trailing null */
		name_len *= 2;
	} else {
		name_len = FUNC5(pSMB->FileName, search_name);
	}
	pSMB->BufferFormat = 0x04;
	name_len++; /* account for buffer type byte */
	FUNC9(pSMB, (__u16)name_len);
	pSMB->ByteCount = FUNC6(name_len);

	rc = FUNC0(xid, tcon->ses, (struct smb_hdr *) pSMB,
			 (struct smb_hdr *) pSMBr, &bytes_returned, 0);
	if (rc) {
		FUNC4(FYI, "Send error in QueryInfo = %d\n", rc);
	} else if (data) {
		struct timespec64 ts;
		__u32 time = FUNC11(pSMBr->last_write_time);

		/* decode response */
		/* BB FIXME - add time zone adjustment BB */
		FUNC12(data, 0, sizeof(FILE_ALL_INFO));
		ts.tv_nsec = 0;
		ts.tv_sec = time;
		/* decode time fields */
		data->ChangeTime = FUNC8(FUNC2(ts));
		data->LastWriteTime = data->ChangeTime;
		data->LastAccessTime = 0;
		data->AllocationSize =
			FUNC8(FUNC11(pSMBr->size));
		data->EndOfFile = data->AllocationSize;
		data->Attributes =
			FUNC7(FUNC10(pSMBr->attr));
	} else
		rc = -EIO; /* bad buffer passed in */

	FUNC3(pSMB);

	if (rc == -EAGAIN)
		goto QInfRetry;

	return rc;
}