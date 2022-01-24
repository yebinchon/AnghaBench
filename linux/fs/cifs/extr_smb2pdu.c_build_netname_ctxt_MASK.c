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
struct smb2_netname_neg_context {int /*<<< orphan*/  DataLength; int /*<<< orphan*/  NetName; int /*<<< orphan*/  ContextType; } ;
struct smb2_neg_context {int dummy; } ;
struct nls_table {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  SMB2_NETNAME_NEGOTIATE_CONTEXT_ID ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,struct nls_table*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct nls_table* FUNC4 () ; 

__attribute__((used)) static unsigned int
FUNC5(struct smb2_netname_neg_context *pneg_ctxt, char *hostname)
{
	struct nls_table *cp = FUNC4();

	pneg_ctxt->ContextType = SMB2_NETNAME_NEGOTIATE_CONTEXT_ID;

	/* copy up to max of first 100 bytes of server name to NetName field */
	pneg_ctxt->DataLength = FUNC2(2 * FUNC1(pneg_ctxt->NetName, hostname, 100, cp));
	/* context size is DataLength + minimal smb2_neg_context */
	return FUNC0(FUNC3(pneg_ctxt->DataLength) +
			sizeof(struct smb2_neg_context), 8) * 8;
}