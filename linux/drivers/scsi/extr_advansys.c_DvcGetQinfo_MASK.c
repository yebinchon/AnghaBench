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
typedef  int ushort ;
typedef  int uchar ;
typedef  scalar_t__ PortAddr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ IOP_RAM_DATA ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(PortAddr iop_base, ushort s_addr, uchar *inbuf, int words)
{
	int i;
	ushort word;

	FUNC1(iop_base, s_addr);
	for (i = 0; i < 2 * words; i += 2) {
		if (i == 10) {
			continue;
		}
		word = FUNC2(iop_base + IOP_RAM_DATA);
		inbuf[i] = word & 0xff;
		inbuf[i + 1] = (word >> 8) & 0xff;
	}
	FUNC0(2, "DvcGetQinfo", inbuf, 2 * words);
}