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

/* Variables and functions */
 int /*<<< orphan*/  ICL_LC_MAILBOX_TIMEOUT ; 
 int /*<<< orphan*/  ICL_LC_PREPARE_FOR_RESET ; 
 int FUNC0 (struct tb_nhi*,int) ; 
 scalar_t__ FUNC1 (struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_nhi*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tb_nhi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tb_nhi *nhi)
{
	int ret;

	if (FUNC1(nhi))
		return 0;

	/*
	 * If there is no device connected we need to perform both: a
	 * handshake through LC mailbox and force power down before
	 * entering D3.
	 */
	FUNC2(nhi, ICL_LC_PREPARE_FOR_RESET);
	ret = FUNC3(nhi, ICL_LC_MAILBOX_TIMEOUT);
	if (ret)
		return ret;

	return FUNC0(nhi, false);
}