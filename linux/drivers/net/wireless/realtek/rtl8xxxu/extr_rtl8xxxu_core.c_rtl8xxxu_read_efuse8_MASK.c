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
typedef  int u16 ;
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ REG_EFUSE_CTRL ; 
 int RTL8XXXU_MAX_REG_POLL ; 
 int FUNC1 (struct rtl8xxxu_priv*,scalar_t__) ; 
 int FUNC2 (struct rtl8xxxu_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct rtl8xxxu_priv *priv, u16 offset, u8 *data)
{
	int i;
	u8 val8;
	u32 val32;

	/* Write Address */
	FUNC3(priv, REG_EFUSE_CTRL + 1, offset & 0xff);
	val8 = FUNC2(priv, REG_EFUSE_CTRL + 2);
	val8 &= 0xfc;
	val8 |= (offset >> 8) & 0x03;
	FUNC3(priv, REG_EFUSE_CTRL + 2, val8);

	val8 = FUNC2(priv, REG_EFUSE_CTRL + 3);
	FUNC3(priv, REG_EFUSE_CTRL + 3, val8 & 0x7f);

	/* Poll for data read */
	val32 = FUNC1(priv, REG_EFUSE_CTRL);
	for (i = 0; i < RTL8XXXU_MAX_REG_POLL; i++) {
		val32 = FUNC1(priv, REG_EFUSE_CTRL);
		if (val32 & FUNC0(31))
			break;
	}

	if (i == RTL8XXXU_MAX_REG_POLL)
		return -EIO;

	FUNC4(50);
	val32 = FUNC1(priv, REG_EFUSE_CTRL);

	*data = val32 & 0xff;
	return 0;
}