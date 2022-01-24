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
struct TYPE_2__ {size_t qhead; int /*<<< orphan*/ * event_buff; } ;
struct ks_wlan_private {scalar_t__ dev_state; int /*<<< orphan*/  sme_task; TYPE_1__ sme_i; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_BOOT ; 
 scalar_t__ FUNC0 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC4(unsigned long dev)
{
	struct ks_wlan_private *priv = (struct ks_wlan_private *)dev;

	if (priv->dev_state < DEVICE_STATE_BOOT)
		return;

	if (FUNC0(priv) <= 0)
		return;

	FUNC1(priv, priv->sme_i.event_buff[priv->sme_i.qhead]);
	FUNC2(priv);
	if (FUNC0(priv) > 0)
		FUNC3(&priv->sme_task);
}