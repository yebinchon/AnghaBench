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
typedef  int /*<<< orphan*/  u16 ;
struct rtl_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_MDIO_CTL ; 
 int /*<<< orphan*/  REG_MDIO_WDATA ; 
 int FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct rtl_priv *rtlpriv, u8 addr, u16 data)
{
	u8 tmp = 0, count = 0;

	FUNC3(rtlpriv, REG_MDIO_WDATA, data);
	FUNC2(rtlpriv, REG_MDIO_CTL, addr | FUNC0(5));
	tmp = FUNC1(rtlpriv, REG_MDIO_CTL) & FUNC0(5);
	count = 0;
	while (tmp && count < 20) {
		FUNC4(10);
		tmp = FUNC1(rtlpriv, REG_MDIO_CTL) & FUNC0(5);
		count++;
	}
}