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
struct mtu3_ep {int epnum; int is_in; } ;
struct mtu3 {int /*<<< orphan*/  mac_base; int /*<<< orphan*/  dev; } ;
struct dentry {int dummy; } ;
struct debugfs_reg32 {char* name; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct debugfs_reg32* FUNC14 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mtu3*,int /*<<< orphan*/ ,struct debugfs_reg32*,int,char*,struct dentry*) ; 

__attribute__((used)) static void FUNC16(struct mtu3 *mtu, struct mtu3_ep *mep,
				   struct dentry *parent)
{
	struct debugfs_reg32 *regs;
	int epnum = mep->epnum;
	int in = mep->is_in;

	regs = FUNC14(mtu->dev, 7, sizeof(*regs), GFP_KERNEL);
	if (!regs)
		return;

	regs[0].name = in ? "TCR0" : "RCR0";
	regs[0].offset = in ? FUNC3(epnum) : FUNC0(epnum);
	regs[1].name = in ? "TCR1" : "RCR1";
	regs[1].offset = in ? FUNC4(epnum) : FUNC1(epnum);
	regs[2].name = in ? "TCR2" : "RCR2";
	regs[2].offset = in ? FUNC5(epnum) : FUNC2(epnum);
	regs[3].name = in ? "TQHIAR" : "RQHIAR";
	regs[3].offset = in ? FUNC12(epnum) : FUNC8(epnum);
	regs[4].name = in ? "TQCSR" : "RQCSR";
	regs[4].offset = in ? FUNC11(epnum) : FUNC7(epnum);
	regs[5].name = in ? "TQSAR" : "RQSAR";
	regs[5].offset = in ? FUNC13(epnum) : FUNC9(epnum);
	regs[6].name = in ? "TQCPR" : "RQCPR";
	regs[6].offset = in ? FUNC10(epnum) : FUNC6(epnum);

	FUNC15(mtu, mtu->mac_base, regs, 7, "ep-regs", parent);
}