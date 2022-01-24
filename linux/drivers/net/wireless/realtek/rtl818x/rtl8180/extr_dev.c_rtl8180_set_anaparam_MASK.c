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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct TYPE_2__ {int /*<<< orphan*/  EEPROM_CMD; int /*<<< orphan*/  CONFIG3; int /*<<< orphan*/  ANAPARAM; } ;

/* Variables and functions */
 int RTL818X_CONFIG3_ANAPARAM_WRITE ; 
 int RTL818X_EEPROM_CMD_CONFIG ; 
 int RTL818X_EEPROM_CMD_NORMAL ; 
 int FUNC0 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8180_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct rtl8180_priv *priv, u32 anaparam)
{
	u8 reg;

	FUNC2(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
	reg = FUNC0(priv, &priv->map->CONFIG3);
	FUNC2(priv, &priv->map->CONFIG3,
		 reg | RTL818X_CONFIG3_ANAPARAM_WRITE);
	FUNC1(priv, &priv->map->ANAPARAM, anaparam);
	FUNC2(priv, &priv->map->CONFIG3,
		 reg & ~RTL818X_CONFIG3_ANAPARAM_WRITE);
	FUNC2(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);
}