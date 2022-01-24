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
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct ks_wlan_private {TYPE_1__ reg; } ;
struct hostif_ps_adhoc_set_request {int /*<<< orphan*/  channel; int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_PS_ADH_SET_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostif_ps_adhoc_set_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*,struct hostif_ps_adhoc_set_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC5(struct ks_wlan_private *priv)
{
	struct hostif_ps_adhoc_set_request *pp;

	pp = FUNC2(sizeof(*pp), HIF_PS_ADH_SET_REQ);
	if (!pp)
		return;

	FUNC3(priv, &pp->request);
	pp->channel = FUNC0(priv->reg.channel);

	FUNC4(priv, pp, FUNC1(sizeof(*pp)));
}