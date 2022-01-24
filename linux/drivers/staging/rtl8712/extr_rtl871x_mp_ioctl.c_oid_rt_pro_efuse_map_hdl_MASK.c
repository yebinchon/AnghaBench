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
struct oid_par_priv {scalar_t__ information_buf_len; scalar_t__ type_of_oid; scalar_t__* bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_MAP_MAX_SIZE ; 
 scalar_t__ QUERY_OID ; 
 int /*<<< orphan*/  RNDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  RNDIS_STATUS_INVALID_LENGTH ; 
 int /*<<< orphan*/  RNDIS_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (struct _adapter*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct _adapter*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 

uint FUNC4(struct oid_par_priv *poid_par_priv)
{
	struct _adapter *Adapter = (struct _adapter *)
				   (poid_par_priv->adapter_context);
	uint status = RNDIS_STATUS_SUCCESS;
	u8		*data;

	*poid_par_priv->bytes_rw = 0;
	if (poid_par_priv->information_buf_len < EFUSE_MAP_MAX_SIZE)
		return RNDIS_STATUS_INVALID_LENGTH;
	data = (u8 *)poid_par_priv->information_buf;
	if (poid_par_priv->type_of_oid == QUERY_OID) {
		if (FUNC0(Adapter, 0, EFUSE_MAP_MAX_SIZE, data))
			*poid_par_priv->bytes_rw = EFUSE_MAP_MAX_SIZE;
		else
			status = RNDIS_STATUS_FAILURE;
	} else {
		/* SET_OID */
		if (FUNC2(Adapter)) {
			if (FUNC1(Adapter, 0,
			    EFUSE_MAP_MAX_SIZE, data))
				*poid_par_priv->bytes_rw = EFUSE_MAP_MAX_SIZE;
			else
				status = RNDIS_STATUS_FAILURE;
			FUNC3(Adapter);
		} else {
			status = RNDIS_STATUS_FAILURE;
		}
	}
	return status;
}