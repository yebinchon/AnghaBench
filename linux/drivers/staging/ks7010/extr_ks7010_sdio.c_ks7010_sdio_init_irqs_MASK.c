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
struct sdio_func {int dummy; } ;
struct ks_wlan_private {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_ENABLE_REG ; 
 int INT_GCR_B ; 
 int /*<<< orphan*/  INT_PENDING_REG ; 
 int INT_READ_STATUS ; 
 int INT_WRITE_STATUS ; 
 int FUNC0 (struct ks_wlan_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 

__attribute__((used)) static void FUNC4(struct sdio_func *func,
				  struct ks_wlan_private *priv)
{
	u8 byte;
	int ret;

	/*
	 * interrupt setting
	 * clear Interrupt status write
	 * (ARMtoSD_InterruptPending FN1:00_0024)
	 */
	FUNC2(func);
	ret = FUNC0(priv, INT_PENDING_REG, 0xff);
	FUNC3(func);
	if (ret)
		FUNC1(priv->net_dev, "write INT_PENDING_REG\n");

	/* enable ks7010sdio interrupt */
	byte = (INT_GCR_B | INT_READ_STATUS | INT_WRITE_STATUS);
	FUNC2(func);
	ret = FUNC0(priv, INT_ENABLE_REG, byte);
	FUNC3(func);
	if (ret)
		FUNC1(priv->net_dev, "write INT_ENABLE_REG\n");
}