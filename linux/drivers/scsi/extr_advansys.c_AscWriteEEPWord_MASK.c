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
typedef  scalar_t__ ushort ;
typedef  int uchar ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 scalar_t__ ASC_EEP_CMD_WRITE ; 
 int ASC_EEP_CMD_WRITE_ABLE ; 
 int ASC_EEP_CMD_WRITE_DISABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ushort FUNC5(PortAddr iop_base, uchar addr, ushort word_val)
{
	ushort read_wval;

	read_wval = FUNC0(iop_base, addr);
	if (read_wval != word_val) {
		FUNC3(iop_base, ASC_EEP_CMD_WRITE_ABLE);
		FUNC1();
		FUNC4(iop_base, word_val);
		FUNC1();
		FUNC3(iop_base,
				  (uchar)((uchar)ASC_EEP_CMD_WRITE | addr));
		FUNC2();
		FUNC3(iop_base, ASC_EEP_CMD_WRITE_DISABLE);
		FUNC1();
		return (FUNC0(iop_base, addr));
	}
	return (read_wval);
}