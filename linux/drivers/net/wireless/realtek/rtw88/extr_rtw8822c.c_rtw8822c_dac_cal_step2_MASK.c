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
typedef  int u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_DBG_RFK ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev,
				   u8 path, u32 *ic_out, u32 *qc_out)
{
	u32 base_addr;
	u32 ic, qc, ic_in, qc_in;

	base_addr = FUNC1(path);
	FUNC4(rtwdev, base_addr + 0xbc, 0xf0000000, 0x0);
	FUNC4(rtwdev, base_addr + 0xc0, 0xf, 0x8);
	FUNC4(rtwdev, base_addr + 0xd8, 0xf0000000, 0x0);
	FUNC4(rtwdev, base_addr + 0xdc, 0xf, 0x8);

	FUNC3(rtwdev, 0x1b00, 0x00000008);
	FUNC5(rtwdev, 0x1bcc, 0x03f);
	FUNC3(rtwdev, base_addr + 0x0c, 0xdff00220);
	FUNC3(rtwdev, base_addr + 0x10, 0x02d508c5);
	FUNC3(rtwdev, 0x1c3c, 0x00088103);

	FUNC0(rtwdev, &ic_in, &qc_in);
	ic = ic_in;
	qc = qc_in;

	/* compensation value */
	if (ic != 0x0)
		ic = 0x400 - ic;
	if (qc != 0x0)
		qc = 0x400 - qc;
	if (ic < 0x300) {
		ic = ic * 2 * 6 / 5;
		ic = ic + 0x80;
	} else {
		ic = (0x400 - ic) * 2 * 6 / 5;
		ic = 0x7f - ic;
	}
	if (qc < 0x300) {
		qc = qc * 2 * 6 / 5;
		qc = qc + 0x80;
	} else {
		qc = (0x400 - qc) * 2 * 6 / 5;
		qc = 0x7f - qc;
	}

	*ic_out = ic;
	*qc_out = qc;

	FUNC2(rtwdev, RTW_DBG_RFK, "[DACK] before i=0x%x, q=0x%x\n", ic_in, qc_in);
	FUNC2(rtwdev, RTW_DBG_RFK, "[DACK] after  i=0x%x, q=0x%x\n", ic, qc);
}