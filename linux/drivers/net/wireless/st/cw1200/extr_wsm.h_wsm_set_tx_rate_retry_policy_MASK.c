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
struct wsm_tx_rate_retry_policy {int dummy; } ;
struct wsm_set_tx_rate_retry_policy {int num; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WSM_MIB_ID_SET_TX_RATE_RETRY_POLICY ; 
 int FUNC0 (struct cw1200_common*,int /*<<< orphan*/ ,struct wsm_set_tx_rate_retry_policy*,size_t) ; 

__attribute__((used)) static inline int FUNC1(struct cw1200_common *priv,
				struct wsm_set_tx_rate_retry_policy *arg)
{
	size_t size = 4 + arg->num * sizeof(struct wsm_tx_rate_retry_policy);
	return FUNC0(priv, WSM_MIB_ID_SET_TX_RATE_RETRY_POLICY, arg,
			     size);
}