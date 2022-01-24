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
typedef  int u32 ;
typedef  int u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTECOEX_ACCESS_CTRL ; 
 int /*<<< orphan*/  LTECOEX_READY ; 
 int /*<<< orphan*/  LTECOEX_WRITE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

bool FUNC2(struct rtw_dev *rtwdev, u16 offset, u32 value)
{
	if (!FUNC0(rtwdev, LTECOEX_ACCESS_CTRL, LTECOEX_READY, 1))
		return false;

	FUNC1(rtwdev, LTECOEX_WRITE_DATA, value);
	FUNC1(rtwdev, LTECOEX_ACCESS_CTRL, 0xC00F0000 | offset);

	return true;
}