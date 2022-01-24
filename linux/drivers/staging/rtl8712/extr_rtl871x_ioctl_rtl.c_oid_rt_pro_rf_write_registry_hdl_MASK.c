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
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_STATUS_INVALID_LENGTH ; 
 int /*<<< orphan*/  RNDIS_STATUS_NOT_ACCEPTED ; 
 int /*<<< orphan*/  RNDIS_STATUS_SUCCESS ; 
 scalar_t__ SET_OID ; 
 scalar_t__ FUNC0 (struct _adapter*,unsigned char,unsigned long) ; 

uint FUNC1(struct oid_par_priv*
					     poid_par_priv)
{
	uint status = RNDIS_STATUS_SUCCESS;
	struct _adapter *Adapter = poid_par_priv->adapter_context;

	if (poid_par_priv->type_of_oid != SET_OID) /* QUERY_OID */
		return RNDIS_STATUS_NOT_ACCEPTED;
	if (poid_par_priv->information_buf_len ==
	   (sizeof(unsigned long) * 3)) {
		if (FUNC0(Adapter,
			*(unsigned char *)poid_par_priv->information_buf,
			(unsigned long)(*((unsigned long *)
					poid_par_priv->information_buf + 2))))
			status = RNDIS_STATUS_NOT_ACCEPTED;
	} else {
		status = RNDIS_STATUS_INVALID_LENGTH;
	}
	return status;
}