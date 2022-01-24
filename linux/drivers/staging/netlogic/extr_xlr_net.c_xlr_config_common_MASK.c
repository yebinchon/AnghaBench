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
struct xlr_net_priv {int /*<<< orphan*/  adapter; int /*<<< orphan*/  ndev; int /*<<< orphan*/  base_addr; TYPE_1__* nd; } ;
struct xlr_fmn_info {int start_stn_id; int end_stn_id; int* credit_config; } ;
struct TYPE_2__ {int* bucket_size; struct xlr_fmn_info* gmac_fmn_info; } ;

/* Variables and functions */
 scalar_t__ R_CC_CPU0_0 ; 
 scalar_t__ R_DMACR0 ; 
 scalar_t__ R_DMACR1 ; 
 scalar_t__ R_DMACR2 ; 
 scalar_t__ R_DMACR3 ; 
 scalar_t__ R_FREEQCARVE ; 
 scalar_t__ R_GMAC_RFR0_BUCKET_SIZE ; 
 scalar_t__ R_MSG_TX_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xlr_net_fmn_handler ; 

__attribute__((used)) static int FUNC3(struct xlr_net_priv *priv)
{
	struct xlr_fmn_info *gmac = priv->nd->gmac_fmn_info;
	int start_stn_id = gmac->start_stn_id;
	int end_stn_id = gmac->end_stn_id;
	int *bucket_size = priv->nd->bucket_size;
	int i, j, err;

	/* Setting non-core MsgBktSize(0x321 - 0x325) */
	for (i = start_stn_id; i <= end_stn_id; i++) {
		FUNC1(priv->base_addr,
			     R_GMAC_RFR0_BUCKET_SIZE + i - start_stn_id,
			     bucket_size[i]);
	}

	/*
	 * Setting non-core Credit counter register
	 * Distributing Gmac's credit to CPU's
	 */
	for (i = 0; i < 8; i++) {
		for (j = 0; j < 8; j++)
			FUNC1(priv->base_addr,
				     (R_CC_CPU0_0 + (i * 8)) + j,
				     gmac->credit_config[(i * 8) + j]);
	}

	FUNC1(priv->base_addr, R_MSG_TX_THRESHOLD, 3);
	FUNC1(priv->base_addr, R_DMACR0, 0xffffffff);
	FUNC1(priv->base_addr, R_DMACR1, 0xffffffff);
	FUNC1(priv->base_addr, R_DMACR2, 0xffffffff);
	FUNC1(priv->base_addr, R_DMACR3, 0xffffffff);
	FUNC1(priv->base_addr, R_FREEQCARVE, 0);

	err = FUNC2(priv->ndev);
	if (err)
		return err;
	FUNC0(start_stn_id, end_stn_id, xlr_net_fmn_handler,
				 priv->adapter);
	return 0;
}