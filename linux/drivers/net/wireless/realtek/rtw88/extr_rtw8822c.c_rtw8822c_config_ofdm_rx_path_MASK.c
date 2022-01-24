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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int BB_PATH_A ; 
 int BB_PATH_AB ; 
 int BB_PATH_B ; 
 int FUNC0 (int) ; 
 int REG_AGCSWSH ; 
 int REG_ANTWTPD ; 
 int REG_MRCM ; 
 int REG_RXFNCTL ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, u8 rx_path)
{
	if (rx_path == BB_PATH_A || rx_path == BB_PATH_B) {
		FUNC1(rtwdev, REG_RXFNCTL, 0x300, 0x0);
		FUNC1(rtwdev, REG_RXFNCTL, 0x600000, 0x0);
		FUNC1(rtwdev, REG_AGCSWSH, FUNC0(17), 0x0);
		FUNC1(rtwdev, REG_ANTWTPD, FUNC0(20), 0x0);
		FUNC1(rtwdev, REG_MRCM, FUNC0(24), 0x0);
	} else if (rx_path == BB_PATH_AB) {
		FUNC1(rtwdev, REG_RXFNCTL, 0x300, 0x1);
		FUNC1(rtwdev, REG_RXFNCTL, 0x600000, 0x1);
		FUNC1(rtwdev, REG_AGCSWSH, FUNC0(17), 0x1);
		FUNC1(rtwdev, REG_ANTWTPD, FUNC0(20), 0x1);
		FUNC1(rtwdev, REG_MRCM, FUNC0(24), 0x1);
	}

	FUNC1(rtwdev, 0x824, 0x0f000000, rx_path);
	FUNC1(rtwdev, 0x824, 0x000f0000, rx_path);
}