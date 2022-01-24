#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int hdrlen; int /*<<< orphan*/ * ta; } ;
struct recv_frame_hdr {TYPE_3__ attrib; } ;
struct TYPE_5__ {struct recv_frame_hdr hdr; } ;
union recv_frame {TYPE_1__ u; } ;
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sta_priv {int dummy; } ;
struct sta_info {scalar_t__ ieee8021x_blocked; } ;
struct TYPE_8__ {int /*<<< orphan*/  free_recv_queue; } ;
struct TYPE_6__ {int AuthAlgrthm; } ;
struct _adapter {TYPE_4__ recvpriv; TYPE_2__ securitypriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 int LLC_HEADER_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (union recv_frame*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union recv_frame*,int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC3 (struct sta_priv*,int /*<<< orphan*/ *) ; 

union recv_frame *FUNC4(struct _adapter *adapter,
				 union recv_frame *precv_frame)
{
	u8 *psta_addr, *ptr;
	uint auth_alg;
	struct recv_frame_hdr *pfhdr;
	struct sta_info *psta;
	struct	sta_priv *pstapriv;
	union recv_frame *prtnframe;
	u16 ether_type;

	pstapriv = &adapter->stapriv;
	ptr = FUNC0(precv_frame);
	pfhdr = &precv_frame->u.hdr;
	psta_addr = pfhdr->attrib.ta;
	psta = FUNC3(pstapriv, psta_addr);
	auth_alg = adapter->securitypriv.AuthAlgrthm;
	if (auth_alg == 2) {
		/* get ether_type */
		ptr = ptr + pfhdr->attrib.hdrlen + LLC_HEADER_SIZE;
		ether_type = FUNC1(ptr);

		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
			/* blocked
			 * only accept EAPOL frame
			 */
			if (ether_type == 0x888e) {
				prtnframe = precv_frame;
			} else {
				/*free this frame*/
				FUNC2(precv_frame,
					 &adapter->recvpriv.free_recv_queue);
				prtnframe = NULL;
			}
		} else {
			/* allowed
			 * check decryption status, and decrypt the
			 * frame if needed
			 */
			prtnframe = precv_frame;
			/* check is the EAPOL frame or not (Rekey) */
			if (ether_type == 0x888e) {
				/* check Rekey */
				prtnframe = precv_frame;
			}
		}
	} else {
		prtnframe = precv_frame;
	}
	return prtnframe;
}