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
struct tb_nhi {int dummy; } ;
typedef  enum icl_lc_mailbox_cmd { ____Placeholder_icl_lc_mailbox_cmd } icl_lc_mailbox_cmd ;

/* Variables and functions */
 int ICL_LC_GO2SX ; 
 int ICL_LC_GO2SX_NO_WAKE ; 
 int /*<<< orphan*/  ICL_LC_MAILBOX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tb_nhi*,int) ; 
 int FUNC1 (struct tb_nhi*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct tb_nhi *nhi, bool wakeup)
{
	enum icl_lc_mailbox_cmd cmd;

	if (!FUNC3())
		return FUNC2(nhi);

	cmd = wakeup ? ICL_LC_GO2SX : ICL_LC_GO2SX_NO_WAKE;
	FUNC0(nhi, cmd);
	return FUNC1(nhi, ICL_LC_MAILBOX_TIMEOUT);
}