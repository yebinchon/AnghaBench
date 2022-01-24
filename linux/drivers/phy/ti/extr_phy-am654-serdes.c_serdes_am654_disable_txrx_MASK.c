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
struct serdes_am654 {int /*<<< orphan*/  rx0_enable; int /*<<< orphan*/  tx0_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX0_DISABLE_STATE ; 
 int /*<<< orphan*/  TX0_DISABLE_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct serdes_am654 *phy)
{
	int ret;

	/* Disable TX */
	ret = FUNC0(phy->tx0_enable, TX0_DISABLE_STATE);
	if (ret)
		return ret;

	/* Disable RX */
	ret = FUNC0(phy->rx0_enable, RX0_DISABLE_STATE);
	if (ret)
		return ret;

	return 0;
}