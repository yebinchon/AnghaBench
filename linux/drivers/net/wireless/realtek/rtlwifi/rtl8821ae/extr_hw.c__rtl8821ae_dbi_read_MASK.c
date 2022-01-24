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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_DBI_ADDR ; 
 int REG_DBI_FLAG ; 
 int REG_DBI_RDATA ; 
 int FUNC0 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u8 FUNC4(struct rtl_priv *rtlpriv, u16 addr)
{
	u16 read_addr = addr & 0xfffc;
	u8 tmp = 0, count = 0, ret = 0;

	FUNC2(rtlpriv, REG_DBI_ADDR, read_addr);
	FUNC1(rtlpriv, REG_DBI_FLAG, 0x2);
	tmp = FUNC0(rtlpriv, REG_DBI_FLAG);
	count = 0;
	while (tmp && count < 20) {
		FUNC3(10);
		tmp = FUNC0(rtlpriv, REG_DBI_FLAG);
		count++;
	}
	if (0 == tmp) {
		read_addr = REG_DBI_RDATA + addr % 4;
		ret = FUNC0(rtlpriv, read_addr);
	}
	return ret;
}