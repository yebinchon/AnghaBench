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
typedef  scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ BB_PATH_A ; 
 scalar_t__ BB_PATH_B ; 
 int /*<<< orphan*/  REG_ANTMAP0 ; 
 int /*<<< orphan*/  REG_TXLGMAP ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct rtw_dev *rtwdev, u8 tx_path,
					 bool is_tx2_path)
{
	if (tx_path == BB_PATH_A) {
		FUNC0(rtwdev, REG_ANTMAP0, 0xff, 0x11);
		FUNC0(rtwdev, REG_TXLGMAP, 0xff, 0x0);
	} else if (tx_path == BB_PATH_B) {
		FUNC0(rtwdev, REG_ANTMAP0, 0xff, 0x12);
		FUNC0(rtwdev, REG_TXLGMAP, 0xff, 0x0);
	} else {
		if (is_tx2_path) {
			FUNC0(rtwdev, REG_ANTMAP0, 0xff, 0x33);
			FUNC0(rtwdev, REG_TXLGMAP, 0xffff, 0x0404);
		} else {
			FUNC0(rtwdev, REG_ANTMAP0, 0xff, 0x31);
			FUNC0(rtwdev, REG_TXLGMAP, 0xffff, 0x0400);
		}
	}
}