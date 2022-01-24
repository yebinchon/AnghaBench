#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rx_pkt_attrib {int encrypt; int bdecrypted; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  u8 ;
struct security_priv {int hw_decrypted; scalar_t__ sw_decrypt; } ;
struct _adapter {struct security_priv securitypriv; } ;

/* Variables and functions */
#define  _AES_ 131 
#define  _TKIP_ 130 
#define  _WEP104_ 129 
#define  _WEP40_ 128 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ *) ; 

union recv_frame *FUNC3(struct _adapter *padapter,
			    union recv_frame *precv_frame)
{
	struct rx_pkt_attrib *prxattrib = &precv_frame->u.hdr.attrib;
	struct security_priv *psecuritypriv = &padapter->securitypriv;
	union recv_frame *return_packet = precv_frame;

	if ((prxattrib->encrypt > 0) && ((prxattrib->bdecrypted == 0) ||
	    psecuritypriv->sw_decrypt)) {
		psecuritypriv->hw_decrypted = false;
		switch (prxattrib->encrypt) {
		case _WEP40_:
		case _WEP104_:
			FUNC2(padapter, (u8 *)precv_frame);
			break;
		case _TKIP_:
			FUNC1(padapter, (u8 *)precv_frame);
			break;
		case _AES_:
			FUNC0(padapter, (u8 *)precv_frame);
			break;
		default:
				break;
		}
	} else if (prxattrib->bdecrypted == 1) {
		psecuritypriv->hw_decrypted = true;
	}
	return return_packet;
}