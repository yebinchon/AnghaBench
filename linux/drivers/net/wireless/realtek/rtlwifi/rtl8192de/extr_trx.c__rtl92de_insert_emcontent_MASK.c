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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_tcb_desc {int* empkt_len; int /*<<< orphan*/  empkt_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rtl_tcb_desc *ptcb_desc,
				      u8 *virtualaddress)
{
	FUNC7(virtualaddress, 0, 8);

	FUNC6(virtualaddress, ptcb_desc->empkt_num);
	FUNC0(virtualaddress, ptcb_desc->empkt_len[0]);
	FUNC1(virtualaddress, ptcb_desc->empkt_len[1]);
	FUNC2(virtualaddress, ptcb_desc->empkt_len[2] & 0xF);
	FUNC3(virtualaddress, ptcb_desc->empkt_len[2] >> 4);
	FUNC4(virtualaddress, ptcb_desc->empkt_len[3]);
	FUNC5(virtualaddress, ptcb_desc->empkt_len[4]);
}