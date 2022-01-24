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
typedef  int /*<<< orphan*/  u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTW_HCI_TYPE_USB ; 
 int TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,char*) ; 
 scalar_t__ FUNC1 (struct rtw_dev*) ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC3(struct rtw_dev *rtwdev, u16 pg_addr, const u8 *data, u32 size)
{
	int ret;

	if (FUNC1(rtwdev) == RTW_HCI_TYPE_USB &&
	    !((size + TX_DESC_SIZE) & (512 - 1)))
		size += 1;

	ret = FUNC2(rtwdev, pg_addr, data, size);
	if (ret)
		FUNC0(rtwdev, "failed to download rsvd page\n");

	return ret;
}