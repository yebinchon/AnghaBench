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
typedef  int u8 ;
typedef  int /*<<< orphan*/  PBTC_COEXIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(
	PBTC_COEXIST pBtCoexist, bool bForceExec, u8 type
)
{
	switch (type) {
	case 0:
		FUNC0(pBtCoexist, bForceExec, 0x55555555, 0x55555555, 0xffff, 0x3);
		break;
	case 1:
		FUNC0(pBtCoexist, bForceExec, 0x55555555, 0x5afa5afa, 0xffff, 0x3);
		break;
	case 2:
		FUNC0(pBtCoexist, bForceExec, 0x5a5a5a5a, 0x5a5a5a5a, 0xffff, 0x3);
		break;
	case 3:
		FUNC0(pBtCoexist, bForceExec, 0xaaaaaaaa, 0xaaaaaaaa, 0xffff, 0x3);
		break;
	case 4:
		FUNC0(pBtCoexist, bForceExec, 0xffffffff, 0xffffffff, 0xffff, 0x3);
		break;
	case 5:
		FUNC0(pBtCoexist, bForceExec, 0x5fff5fff, 0x5fff5fff, 0xffff, 0x3);
		break;
	case 6:
		FUNC0(pBtCoexist, bForceExec, 0x55ff55ff, 0x5a5a5a5a, 0xffff, 0x3);
		break;
	case 7:
		FUNC0(pBtCoexist, bForceExec, 0x55ff55ff, 0xfafafafa, 0xffff, 0x3);
		break;
	case 8:
		FUNC0(pBtCoexist, bForceExec, 0x5aea5aea, 0x5aea5aea, 0xffff, 0x3);
		break;
	case 9:
		FUNC0(pBtCoexist, bForceExec, 0x55ff55ff, 0x5aea5aea, 0xffff, 0x3);
		break;
	case 10:
		FUNC0(pBtCoexist, bForceExec, 0x55ff55ff, 0x5aff5aff, 0xffff, 0x3);
		break;
	case 11:
		FUNC0(pBtCoexist, bForceExec, 0x55ff55ff, 0x5a5f5a5f, 0xffff, 0x3);
		break;
	case 12:
		FUNC0(pBtCoexist, bForceExec, 0x55ff55ff, 0x5f5f5f5f, 0xffff, 0x3);
		break;
	default:
		break;
	}
}