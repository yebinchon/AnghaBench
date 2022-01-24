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
struct smb2_preauth_neg_context {int /*<<< orphan*/  HashAlgorithms; int /*<<< orphan*/  Salt; void* SaltLength; void* HashAlgorithmCount; void* DataLength; int /*<<< orphan*/  ContextType; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB2_PREAUTH_INTEGRITY_CAPABILITIES ; 
 int /*<<< orphan*/  SMB2_PREAUTH_INTEGRITY_SHA512 ; 
 int SMB311_SALT_SIZE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct smb2_preauth_neg_context *pneg_ctxt)
{
	pneg_ctxt->ContextType = SMB2_PREAUTH_INTEGRITY_CAPABILITIES;
	pneg_ctxt->DataLength = FUNC0(38);
	pneg_ctxt->HashAlgorithmCount = FUNC0(1);
	pneg_ctxt->SaltLength = FUNC0(SMB311_SALT_SIZE);
	FUNC1(pneg_ctxt->Salt, SMB311_SALT_SIZE);
	pneg_ctxt->HashAlgorithms = SMB2_PREAUTH_INTEGRITY_SHA512;
}