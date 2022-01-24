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
typedef  scalar_t__ uchar ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 scalar_t__ ASC_1000_ID0W ; 
 scalar_t__ ASC_1000_ID0W_FIX ; 
 scalar_t__ ASC_1000_ID1B ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(PortAddr iop_base)
{
	ushort sig_word;

	FUNC0(1, "AscGetChipSignatureByte(0x%x) 0x%x\n",
		 iop_base, FUNC1(iop_base));
	if (FUNC1(iop_base) == (uchar)ASC_1000_ID1B) {
		FUNC0(1, "AscGetChipSignatureWord(0x%x) 0x%x\n",
			 iop_base, FUNC2(iop_base));
		sig_word = FUNC2(iop_base);
		if ((sig_word == (ushort)ASC_1000_ID0W) ||
		    (sig_word == (ushort)ASC_1000_ID0W_FIX)) {
			return (1);
		}
	}
	return (0);
}