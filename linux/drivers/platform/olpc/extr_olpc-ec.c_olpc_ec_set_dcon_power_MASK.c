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
struct olpc_ec_priv {int dcon_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_DCON_POWER_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct olpc_ec_priv *ec, bool state)
{
	unsigned char ec_byte = state;
	int ret;

	if (ec->dcon_enabled == state)
		return 0;

	ret = FUNC0(EC_DCON_POWER_MODE, &ec_byte, 1, NULL, 0);
	if (ret)
		return ret;

	ec->dcon_enabled = state;
	return 0;
}