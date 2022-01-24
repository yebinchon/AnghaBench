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
struct TYPE_2__ {int /*<<< orphan*/  confirm_wait; int /*<<< orphan*/  status; } ;
struct ks_wlan_private {TYPE_1__ psstatus; } ;

/* Variables and functions */
 scalar_t__ PS_ACTIVE_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct ks_wlan_private *priv)
{
	if (FUNC1(&priv->psstatus.status) > PS_ACTIVE_SET)
		FUNC0(&priv->psstatus.confirm_wait);
}