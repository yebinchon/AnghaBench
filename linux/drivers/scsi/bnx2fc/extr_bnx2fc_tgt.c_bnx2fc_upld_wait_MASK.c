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
struct bnx2fc_rport {int /*<<< orphan*/  upld_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  upld_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_FLAG_UPLD_REQ_COMPL ; 
 scalar_t__ BNX2FC_FW_TIMEOUT ; 
 int /*<<< orphan*/  bnx2fc_upld_timer ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bnx2fc_rport *tgt)
{
	FUNC5(&tgt->upld_timer, bnx2fc_upld_timer, 0);
	FUNC2(&tgt->upld_timer, jiffies + BNX2FC_FW_TIMEOUT);
	FUNC6(tgt->upld_wait,
				 (FUNC4(
				  BNX2FC_FLAG_UPLD_REQ_COMPL,
				  &tgt->flags)));
	if (FUNC3(current))
		FUNC1(current);
	FUNC0(&tgt->upld_timer);
}