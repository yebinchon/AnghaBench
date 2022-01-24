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
struct smb2_negotiate_rsp {scalar_t__ NegotiateContextCount; int /*<<< orphan*/  NegotiateContextOffset; } ;
struct smb2_neg_context {scalar_t__ DataLength; scalar_t__ ContextType; } ;
struct smb2_encryption_neg_context {int dummy; } ;
struct smb2_compression_capabilities_context {int dummy; } ;
struct TCP_Server_Info {int posix_ext_supported; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ SMB2_COMPRESSION_CAPABILITIES ; 
 scalar_t__ SMB2_ENCRYPTION_CAPABILITIES ; 
 scalar_t__ SMB2_POSIX_EXTENSIONS_AVAILABLE ; 
 scalar_t__ SMB2_PREAUTH_INTEGRITY_CAPABILITIES ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,struct smb2_compression_capabilities_context*) ; 
 int FUNC3 (struct TCP_Server_Info*,struct smb2_encryption_neg_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb2_preauth_neg_context*) ; 
 void* FUNC5 (scalar_t__) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct smb2_negotiate_rsp *rsp,
				     struct TCP_Server_Info *server,
				     unsigned int len_of_smb)
{
	struct smb2_neg_context *pctx;
	unsigned int offset = FUNC6(rsp->NegotiateContextOffset);
	unsigned int ctxt_cnt = FUNC5(rsp->NegotiateContextCount);
	unsigned int len_of_ctxts, i;
	int rc = 0;

	FUNC0(FYI, "decoding %d negotiate contexts\n", ctxt_cnt);
	if (len_of_smb <= offset) {
		FUNC1(VFS, "Invalid response: negotiate context offset\n");
		return -EINVAL;
	}

	len_of_ctxts = len_of_smb - offset;

	for (i = 0; i < ctxt_cnt; i++) {
		int clen;
		/* check that offset is not beyond end of SMB */
		if (len_of_ctxts == 0)
			break;

		if (len_of_ctxts < sizeof(struct smb2_neg_context))
			break;

		pctx = (struct smb2_neg_context *)(offset + (char *)rsp);
		clen = FUNC5(pctx->DataLength);
		if (clen > len_of_ctxts)
			break;

		if (pctx->ContextType == SMB2_PREAUTH_INTEGRITY_CAPABILITIES)
			FUNC4(
				(struct smb2_preauth_neg_context *)pctx);
		else if (pctx->ContextType == SMB2_ENCRYPTION_CAPABILITIES)
			rc = FUNC3(server,
				(struct smb2_encryption_neg_context *)pctx);
		else if (pctx->ContextType == SMB2_COMPRESSION_CAPABILITIES)
			FUNC2(server,
				(struct smb2_compression_capabilities_context *)pctx);
		else if (pctx->ContextType == SMB2_POSIX_EXTENSIONS_AVAILABLE)
			server->posix_ext_supported = true;
		else
			FUNC1(VFS, "unknown negcontext of type %d ignored\n",
				FUNC5(pctx->ContextType));

		if (rc)
			break;
		/* offsets must be 8 byte aligned */
		clen = (clen + 7) & ~0x7;
		offset += clen + sizeof(struct smb2_neg_context);
		len_of_ctxts -= clen;
	}
	return rc;
}