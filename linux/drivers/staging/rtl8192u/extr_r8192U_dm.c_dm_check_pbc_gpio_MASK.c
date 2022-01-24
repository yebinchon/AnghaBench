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
struct r8192_priv {int bpbc_pressed; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_IO ; 
 int /*<<< orphan*/  GPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static	void	FUNC4(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC2(dev);
	u8 tmp1byte;

	FUNC3(dev, GPI, &tmp1byte);
	if (tmp1byte == 0xff)
		return;

	if (tmp1byte & FUNC0(6) || tmp1byte & FUNC0(0)) {
		/* Here we only set bPbcPressed to TRUE
		 * After trigger PBC, the variable will be set to FALSE
		 */
		FUNC1(COMP_IO, "CheckPbcGPIO - PBC is pressed\n");
		priv->bpbc_pressed = true;
	}

}