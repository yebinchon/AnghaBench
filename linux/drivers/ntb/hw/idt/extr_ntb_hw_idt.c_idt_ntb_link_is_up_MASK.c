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
typedef  unsigned char u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {unsigned char peer_cnt; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDT_NT_PCIELCTLSTS ; 
 int /*<<< orphan*/  PCIELCTLSTS_CLS ; 
 int /*<<< orphan*/  PCIELCTLSTS_NLW ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idt_ntb_dev*) ; 
 scalar_t__ FUNC3 (struct idt_ntb_dev*,unsigned char) ; 
 struct idt_ntb_dev* FUNC4 (struct ntb_dev*) ; 

__attribute__((used)) static u64 FUNC5(struct ntb_dev *ntb,
			      enum ntb_speed *speed, enum ntb_width *width)
{
	struct idt_ntb_dev *ndev = FUNC4(ntb);
	unsigned char pidx;
	u64 status;
	u32 data;

	/* Retrieve the local link speed and width */
	if (speed != NULL || width != NULL) {
		data = FUNC1(ndev, IDT_NT_PCIELCTLSTS);
		if (speed != NULL)
			*speed = FUNC0(PCIELCTLSTS_CLS, data);
		if (width != NULL)
			*width = FUNC0(PCIELCTLSTS_NLW, data);
	}

	/* If local NTB link isn't up then all the links are considered down */
	if (!FUNC2(ndev))
		return 0;

	/* Collect all the peer ports link states into the bitfield */
	status = 0;
	for (pidx = 0; pidx < ndev->peer_cnt; pidx++) {
		if (FUNC3(ndev, pidx))
			status |= ((u64)1 << pidx);
	}

	return status;
}