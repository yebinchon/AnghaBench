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
struct smb2_preauth_neg_context {int dummy; } ;
struct smb2_posix_neg_context {int dummy; } ;
struct smb2_netname_neg_context {int dummy; } ;
struct smb2_negotiate_req {void* NegotiateContextCount; int /*<<< orphan*/  NegotiateContextOffset; } ;
struct smb2_encryption_neg_context {int dummy; } ;
struct smb2_compression_capabilities_context {int dummy; } ;
struct TCP_Server_Info {int /*<<< orphan*/  hostname; scalar_t__ compress_algorithm; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (struct smb2_compression_capabilities_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb2_encryption_neg_context*) ; 
 unsigned int FUNC3 (struct smb2_netname_neg_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smb2_posix_neg_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb2_preauth_neg_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 unsigned int FUNC9 (unsigned int,int) ; 

__attribute__((used)) static void
FUNC10(struct smb2_negotiate_req *req,
		      struct TCP_Server_Info *server, unsigned int *total_len)
{
	char *pneg_ctxt = (char *)req;
	unsigned int ctxt_len;

	if (*total_len > 200) {
		/* In case length corrupted don't want to overrun smb buffer */
		FUNC6(VFS, "Bad frame length assembling neg contexts\n");
		return;
	}

	/*
	 * round up total_len of fixed part of SMB3 negotiate request to 8
	 * byte boundary before adding negotiate contexts
	 */
	*total_len = FUNC9(*total_len, 8);

	pneg_ctxt = (*total_len) + (char *)req;
	req->NegotiateContextOffset = FUNC8(*total_len);

	FUNC5((struct smb2_preauth_neg_context *)pneg_ctxt);
	ctxt_len = FUNC0(sizeof(struct smb2_preauth_neg_context), 8) * 8;
	*total_len += ctxt_len;
	pneg_ctxt += ctxt_len;

	FUNC2((struct smb2_encryption_neg_context *)pneg_ctxt);
	ctxt_len = FUNC0(sizeof(struct smb2_encryption_neg_context), 8) * 8;
	*total_len += ctxt_len;
	pneg_ctxt += ctxt_len;

	if (server->compress_algorithm) {
		FUNC1((struct smb2_compression_capabilities_context *)
				pneg_ctxt);
		ctxt_len = FUNC0(
			sizeof(struct smb2_compression_capabilities_context),
				8) * 8;
		*total_len += ctxt_len;
		pneg_ctxt += ctxt_len;
		req->NegotiateContextCount = FUNC7(5);
	} else
		req->NegotiateContextCount = FUNC7(4);

	ctxt_len = FUNC3((struct smb2_netname_neg_context *)pneg_ctxt,
					server->hostname);
	*total_len += ctxt_len;
	pneg_ctxt += ctxt_len;

	FUNC4((struct smb2_posix_neg_context *)pneg_ctxt);
	*total_len += sizeof(struct smb2_posix_neg_context);
}