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
typedef  void* u8 ;
typedef  void* u64 ;
typedef  size_t u32 ;
struct smb_rqst {struct kvec* rq_iov; } ;
struct smb2_query_info_req {int /*<<< orphan*/  Buffer; int /*<<< orphan*/  InputBufferOffset; void* InputBufferLength; void* OutputBufferLength; void* AdditionalInformation; void* VolatileFileId; void* PersistentFileId; void* FileInfoClass; void* InfoType; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB2_QUERY_INFO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct cifs_tcon*,void**,unsigned int*) ; 

int
FUNC4(struct cifs_tcon *tcon, struct smb_rqst *rqst,
		     u64 persistent_fid, u64 volatile_fid,
		     u8 info_class, u8 info_type, u32 additional_info,
		     size_t output_len, size_t input_len, void *input)
{
	struct smb2_query_info_req *req;
	struct kvec *iov = rqst->rq_iov;
	unsigned int total_len;
	int rc;

	rc = FUNC3(SMB2_QUERY_INFO, tcon, (void **) &req,
			     &total_len);
	if (rc)
		return rc;

	req->InfoType = info_type;
	req->FileInfoClass = info_class;
	req->PersistentFileId = persistent_fid;
	req->VolatileFileId = volatile_fid;
	req->AdditionalInformation = FUNC1(additional_info);

	req->OutputBufferLength = FUNC1(output_len);
	if (input_len) {
		req->InputBufferLength = FUNC1(input_len);
		/* total_len for smb query request never close to le16 max */
		req->InputBufferOffset = FUNC0(total_len - 1);
		FUNC2(req->Buffer, input, input_len);
	}

	iov[0].iov_base = (char *)req;
	/* 1 for Buffer */
	iov[0].iov_len = total_len - 1 + input_len;
	return 0;
}