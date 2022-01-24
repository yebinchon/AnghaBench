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
struct timer_list {int dummy; } ;
struct bnx2fc_rport {int /*<<< orphan*/  upld_wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_FLAG_ENABLED ; 
 int /*<<< orphan*/  BNX2FC_FLAG_OFFLOADED ; 
 int /*<<< orphan*/  BNX2FC_FLAG_UPLD_REQ_COMPL ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_rport*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bnx2fc_rport* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bnx2fc_rport* tgt ; 
 int /*<<< orphan*/  upld_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{

	struct bnx2fc_rport *tgt = FUNC2(tgt, t, upld_timer);

	FUNC0(tgt, "upld_timer - Upload compl not received!!\n");
	/* fake upload completion */
	FUNC1(BNX2FC_FLAG_OFFLOADED, &tgt->flags);
	FUNC1(BNX2FC_FLAG_ENABLED, &tgt->flags);
	FUNC3(BNX2FC_FLAG_UPLD_REQ_COMPL, &tgt->flags);
	FUNC4(&tgt->upld_wait);
}