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
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INIT_LLT ; 
 scalar_t__ REG_TDECTRL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct adapter *padapter, u8 txpktbuf_bndy)
{
	s32 rst = _SUCCESS;

	FUNC1(padapter, 1);
	FUNC2(padapter, REG_TDECTRL+1, txpktbuf_bndy);
	rst = FUNC0(padapter, CMD_INIT_LLT);
	FUNC1(padapter, 0);
	return rst;
}