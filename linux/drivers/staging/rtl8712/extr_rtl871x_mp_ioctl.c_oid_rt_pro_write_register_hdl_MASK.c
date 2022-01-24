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
typedef  int u32 ;
typedef  int u16 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct mp_rw_reg {int offset; int value; int width; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_STATUS_NOT_ACCEPTED ; 
 int /*<<< orphan*/  RNDIS_STATUS_SUCCESS ; 
 scalar_t__ SET_OID ; 
 int FUNC0 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int,unsigned char) ; 

uint FUNC5(struct oid_par_priv *poid_par_priv)
{
	struct _adapter *Adapter = (struct _adapter *)
				   (poid_par_priv->adapter_context);
	uint status = RNDIS_STATUS_SUCCESS;
	struct mp_rw_reg *RegRWStruct;
	u16		offset;
	u32		value;
	u32 oldValue = 0;

	if (poid_par_priv->type_of_oid != SET_OID)
		return RNDIS_STATUS_NOT_ACCEPTED;
	RegRWStruct = (struct mp_rw_reg *)poid_par_priv->information_buf;
	if ((RegRWStruct->offset >= 0x10250800) &&
	    (RegRWStruct->offset <= 0x10250FFF)) {
		/*baseband register*/
		offset = (u16)(RegRWStruct->offset) & 0xFFF;
		value = RegRWStruct->value;
		switch (RegRWStruct->width) {
		case 1:
			oldValue = FUNC0(Adapter, offset);
			oldValue &= 0xFFFFFF00;
			value &= 0x000000FF;
			value |= oldValue;
			break;
		case 2:
			oldValue = FUNC0(Adapter, offset);
			oldValue &= 0xFFFF0000;
			value &= 0x0000FFFF;
			value |= oldValue;
			break;
		}
		FUNC1(Adapter, offset, value);
	} else {
		switch (RegRWStruct->width) {
		case 1:
			FUNC4(Adapter, RegRWStruct->offset,
			       (unsigned char)RegRWStruct->value);
			break;
		case 2:
			FUNC2(Adapter, RegRWStruct->offset,
				(unsigned short)RegRWStruct->value);
			break;
		case 4:
			FUNC3(Adapter, RegRWStruct->offset,
				(unsigned int)RegRWStruct->value);
			break;
		default:
			status = RNDIS_STATUS_NOT_ACCEPTED;
			break;
		}
	}
	return status;
}