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
 int /*<<< orphan*/  ASCV_HOST_FLAG_B ; 
 int /*<<< orphan*/  ASCV_RISC_FLAG_B ; 
 int ASC_HOST_FLAG_ACK_INT ; 
 int ASC_RISC_FLAG_GEN_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CIW_INT_ACK ; 
 int CSW_INT_PENDING ; 

__attribute__((used)) static void FUNC4(PortAddr iop_base)
{
	uchar host_flag;
	uchar risc_flag;
	ushort loop;

	loop = 0;
	do {
		risc_flag = FUNC1(iop_base, ASCV_RISC_FLAG_B);
		if (loop++ > 0x7FFF) {
			break;
		}
	} while ((risc_flag & ASC_RISC_FLAG_GEN_INT) != 0);
	host_flag =
	    FUNC1(iop_base,
			    ASCV_HOST_FLAG_B) & (~ASC_HOST_FLAG_ACK_INT);
	FUNC3(iop_base, ASCV_HOST_FLAG_B,
			 (uchar)(host_flag | ASC_HOST_FLAG_ACK_INT));
	FUNC2(iop_base, CIW_INT_ACK);
	loop = 0;
	while (FUNC0(iop_base) & CSW_INT_PENDING) {
		FUNC2(iop_base, CIW_INT_ACK);
		if (loop++ > 3) {
			break;
		}
	}
	FUNC3(iop_base, ASCV_HOST_FLAG_B, host_flag);
}