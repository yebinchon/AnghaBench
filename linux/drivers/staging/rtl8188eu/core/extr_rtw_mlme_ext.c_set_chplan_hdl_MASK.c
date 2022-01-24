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
typedef  int /*<<< orphan*/  u8 ;
struct mlme_ext_priv {int /*<<< orphan*/  channel_list; int /*<<< orphan*/  max_chan_nums; int /*<<< orphan*/  channel_set; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct SetChannelPlan_param {int /*<<< orphan*/  channel_plan; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2C_PARAMETERS_ERROR ; 
 int /*<<< orphan*/  H2C_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u8 FUNC2(struct adapter *padapter, unsigned char *pbuf)
{
	struct SetChannelPlan_param *setChannelPlan_param;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

	if (!pbuf)
		return H2C_PARAMETERS_ERROR;

	setChannelPlan_param = (struct SetChannelPlan_param *)pbuf;

	pmlmeext->max_chan_nums = FUNC1(padapter, setChannelPlan_param->channel_plan, pmlmeext->channel_set);
	FUNC0(padapter, pmlmeext->channel_set, pmlmeext->max_chan_nums, &pmlmeext->channel_list);

	return H2C_SUCCESS;
}