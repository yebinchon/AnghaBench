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
struct wsm_override_internal_txrate {int dummy; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE ; 
 int FUNC0 (struct cw1200_common*,int /*<<< orphan*/ ,struct wsm_override_internal_txrate*,int) ; 

__attribute__((used)) static inline int FUNC1(struct cw1200_common *priv,
				     struct wsm_override_internal_txrate *arg)
{
	return FUNC0(priv, WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE,
				arg, sizeof(*arg));
}