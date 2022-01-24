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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DBI_ADDR ; 
 int REG_DBI_FLAG ; 
 int REG_DBI_WDATA ; 
 int FUNC1 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct rtl_priv *rtlpriv, u16 addr, u8 data)
{
	u8 tmp = 0, count = 0;
	u16 write_addr, remainder = addr % 4;

	write_addr = REG_DBI_WDATA + remainder;
	FUNC2(rtlpriv, write_addr, data);

	write_addr = (addr & 0xfffc) | (FUNC0(0) << (remainder + 12));
	FUNC3(rtlpriv, REG_DBI_ADDR, write_addr);

	FUNC2(rtlpriv, REG_DBI_FLAG, 0x1);

	tmp = FUNC1(rtlpriv, REG_DBI_FLAG);
	count = 0;
	while (tmp && count < 20) {
		FUNC4(10);
		tmp = FUNC1(rtlpriv, REG_DBI_FLAG);
		count++;
	}
}