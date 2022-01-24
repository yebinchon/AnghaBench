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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IQK_DELAY_TIME_88E ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rIQK_AGC_Pts ; 
 int /*<<< orphan*/  rIQK_AGC_Rsp ; 
 int /*<<< orphan*/  rRx_IQK_PI_A ; 
 int /*<<< orphan*/  rRx_IQK_Tone_A ; 
 int /*<<< orphan*/  rRx_Power_After_IQK_A_2 ; 
 int /*<<< orphan*/  rTx_IQK_PI_A ; 
 int /*<<< orphan*/  rTx_IQK_Tone_A ; 
 int /*<<< orphan*/  rTx_Power_After_IQK_A ; 
 int /*<<< orphan*/  rTx_Power_Before_IQK_A ; 

__attribute__((used)) static u8 FUNC4(struct adapter *adapt, bool config_pathb)
{
	u32 reg_eac, reg_e94, reg_e9c;
	u8 result = 0x00;

	/* 1 Tx IQK */
	/* path-A IQK setting */
	FUNC3(adapt, rTx_IQK_Tone_A, bMaskDWord, 0x10008c1c);
	FUNC3(adapt, rRx_IQK_Tone_A, bMaskDWord, 0x30008c1c);
	FUNC3(adapt, rTx_IQK_PI_A, bMaskDWord, 0x8214032a);
	FUNC3(adapt, rRx_IQK_PI_A, bMaskDWord, 0x28160000);

	/* LO calibration setting */
	FUNC3(adapt, rIQK_AGC_Rsp, bMaskDWord, 0x00462911);

	/* One shot, path A LOK & IQK */
	FUNC3(adapt, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
	FUNC3(adapt, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);

	FUNC1(IQK_DELAY_TIME_88E);

	reg_eac = FUNC2(adapt, rRx_Power_After_IQK_A_2, bMaskDWord);
	reg_e94 = FUNC2(adapt, rTx_Power_Before_IQK_A, bMaskDWord);
	reg_e9c = FUNC2(adapt, rTx_Power_After_IQK_A, bMaskDWord);

	if (!(reg_eac & FUNC0(28)) &&
	    (((reg_e94 & 0x03FF0000)>>16) != 0x142) &&
	    (((reg_e9c & 0x03FF0000)>>16) != 0x42))
		result |= 0x01;
	return result;
}