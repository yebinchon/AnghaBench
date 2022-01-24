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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;
struct EFUSE_ACCESS_STRUCT {int start_addr; int cnts; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  RNDIS_STATUS_NOT_ACCEPTED ; 
 int /*<<< orphan*/  RNDIS_STATUS_SUCCESS ; 
 scalar_t__ SET_OID ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct _adapter*) ; 

uint FUNC2(struct oid_par_priv *poid_par_priv)
{
	struct _adapter *Adapter = (struct _adapter *)
				   (poid_par_priv->adapter_context);

	uint status = RNDIS_STATUS_SUCCESS;

	struct EFUSE_ACCESS_STRUCT *pefuse;
	u8 *data;
	u16 addr = 0, cnts = 0;

	if (poid_par_priv->type_of_oid != SET_OID)
		return RNDIS_STATUS_NOT_ACCEPTED;

	pefuse = (struct EFUSE_ACCESS_STRUCT *)poid_par_priv->information_buf;
	addr = pefuse->start_addr;
	cnts = pefuse->cnts;
	data = pefuse->data;

	if ((addr > 511) || (cnts < 1) || (cnts > 512) ||
	    (addr + cnts) > FUNC1(Adapter))
		return RNDIS_STATUS_NOT_ACCEPTED;
	if (!FUNC0(Adapter, false, addr, cnts, data))
		status = RNDIS_STATUS_FAILURE;
	return status;
}