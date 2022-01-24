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
typedef  scalar_t__ u8 ;
struct tb_xdomain {int /*<<< orphan*/  link; } ;
struct tb {int /*<<< orphan*/  nhi; } ;

/* Variables and functions */
 scalar_t__ NHI_MAILBOX_DISCONNECT_PA ; 
 scalar_t__ NHI_MAILBOX_DISCONNECT_PB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct tb *tb, struct tb_xdomain *xd)
{
	u8 phy_port;
	u8 cmd;

	phy_port = FUNC1(xd->link);
	if (phy_port == 0)
		cmd = NHI_MAILBOX_DISCONNECT_PA;
	else
		cmd = NHI_MAILBOX_DISCONNECT_PB;

	FUNC0(tb->nhi, cmd, 1);
	FUNC2(10, 50);
	FUNC0(tb->nhi, cmd, 2);
	return 0;
}