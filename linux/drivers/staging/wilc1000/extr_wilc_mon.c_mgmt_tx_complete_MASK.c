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
struct tx_complete_mon_data {struct tx_complete_mon_data* buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tx_complete_mon_data*) ; 

__attribute__((used)) static void FUNC1(void *priv, int status)
{
	struct tx_complete_mon_data *pv_data = priv;
	/*
	 * in case of fully hosting mode, the freeing will be done
	 * in response to the cfg packet
	 */
	FUNC0(pv_data->buff);

	FUNC0(pv_data);
}