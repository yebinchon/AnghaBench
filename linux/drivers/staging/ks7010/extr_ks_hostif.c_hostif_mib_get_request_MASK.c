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
typedef  int /*<<< orphan*/  u32 ;
struct ks_wlan_private {int dummy; } ;
struct hostif_mib_get_request {int /*<<< orphan*/  mib_attribute; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_MIB_GET_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostif_mib_get_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*,struct hostif_mib_get_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ks_wlan_private *priv,
				   u32 mib_attribute)
{
	struct hostif_mib_get_request *pp;

	pp = FUNC2(sizeof(*pp), HIF_MIB_GET_REQ);
	if (!pp)
		return;

	pp->mib_attribute = FUNC0(mib_attribute);

	FUNC3(priv, pp, FUNC1(sizeof(*pp)));
}