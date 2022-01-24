#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtl8187_priv {TYPE_1__* map; scalar_t__ is_rtl8187b; } ;
struct TYPE_2__ {int /*<<< orphan*/  EEPROM_CMD; int /*<<< orphan*/  CONFIG3; int /*<<< orphan*/  ANAPARAM3A; int /*<<< orphan*/  ANAPARAM2; int /*<<< orphan*/  ANAPARAM; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8187B_RTL8225_ANAPARAM2_OFF ; 
 int /*<<< orphan*/  RTL8187B_RTL8225_ANAPARAM2_ON ; 
 int /*<<< orphan*/  RTL8187B_RTL8225_ANAPARAM3_OFF ; 
 int /*<<< orphan*/  RTL8187B_RTL8225_ANAPARAM3_ON ; 
 int /*<<< orphan*/  RTL8187B_RTL8225_ANAPARAM_OFF ; 
 int /*<<< orphan*/  RTL8187B_RTL8225_ANAPARAM_ON ; 
 int /*<<< orphan*/  RTL8187_RTL8225_ANAPARAM2_OFF ; 
 int /*<<< orphan*/  RTL8187_RTL8225_ANAPARAM2_ON ; 
 int /*<<< orphan*/  RTL8187_RTL8225_ANAPARAM_OFF ; 
 int /*<<< orphan*/  RTL8187_RTL8225_ANAPARAM_ON ; 
 int /*<<< orphan*/  RTL818X_CONFIG3_ANAPARAM_WRITE ; 
 int /*<<< orphan*/  RTL818X_EEPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  RTL818X_EEPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8187_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8187_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rtl8187_priv *priv, bool rfon)
{
	u32 anaparam, anaparam2;
	u8 anaparam3, reg;

	if (!priv->is_rtl8187b) {
		if (rfon) {
			anaparam = RTL8187_RTL8225_ANAPARAM_ON;
			anaparam2 = RTL8187_RTL8225_ANAPARAM2_ON;
		} else {
			anaparam = RTL8187_RTL8225_ANAPARAM_OFF;
			anaparam2 = RTL8187_RTL8225_ANAPARAM2_OFF;
		}
	} else {
		if (rfon) {
			anaparam = RTL8187B_RTL8225_ANAPARAM_ON;
			anaparam2 = RTL8187B_RTL8225_ANAPARAM2_ON;
			anaparam3 = RTL8187B_RTL8225_ANAPARAM3_ON;
		} else {
			anaparam = RTL8187B_RTL8225_ANAPARAM_OFF;
			anaparam2 = RTL8187B_RTL8225_ANAPARAM2_OFF;
			anaparam3 = RTL8187B_RTL8225_ANAPARAM3_OFF;
		}
	}

	FUNC2(priv, &priv->map->EEPROM_CMD,
			 RTL818X_EEPROM_CMD_CONFIG);
	reg = FUNC0(priv, &priv->map->CONFIG3);
	reg |= RTL818X_CONFIG3_ANAPARAM_WRITE;
	FUNC2(priv, &priv->map->CONFIG3, reg);
	FUNC1(priv, &priv->map->ANAPARAM, anaparam);
	FUNC1(priv, &priv->map->ANAPARAM2, anaparam2);
	if (priv->is_rtl8187b)
		FUNC2(priv, &priv->map->ANAPARAM3A, anaparam3);
	reg &= ~RTL818X_CONFIG3_ANAPARAM_WRITE;
	FUNC2(priv, &priv->map->CONFIG3, reg);
	FUNC2(priv, &priv->map->EEPROM_CMD,
			 RTL818X_EEPROM_CMD_NORMAL);
}