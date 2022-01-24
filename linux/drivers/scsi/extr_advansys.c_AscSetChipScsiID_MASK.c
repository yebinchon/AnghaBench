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
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int ASC_MAX_TID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uchar FUNC3(PortAddr iop_base, uchar new_host_id)
{
	ushort cfg_lsw;

	if (FUNC1(iop_base) == new_host_id) {
		return (new_host_id);
	}
	cfg_lsw = FUNC0(iop_base);
	cfg_lsw &= 0xF8FF;
	cfg_lsw |= (ushort)((new_host_id & ASC_MAX_TID) << 8);
	FUNC2(iop_base, cfg_lsw);
	return (FUNC1(iop_base));
}