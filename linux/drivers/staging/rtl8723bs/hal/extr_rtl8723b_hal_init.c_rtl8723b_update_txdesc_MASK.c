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
struct xmit_frame {int dummy; } ;
struct tx_desc {int /*<<< orphan*/  txdw9; int /*<<< orphan*/  txdw8; int /*<<< orphan*/  txdw7; int /*<<< orphan*/  txdw6; int /*<<< orphan*/  txdw5; int /*<<< orphan*/  txdw4; int /*<<< orphan*/  txdw3; int /*<<< orphan*/  txdw2; int /*<<< orphan*/  txdw1; int /*<<< orphan*/  txdw0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tx_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct xmit_frame*,int /*<<< orphan*/ *) ; 

void FUNC2(struct xmit_frame *pxmitframe, u8 *pbuf)
{
	struct tx_desc *pdesc;

	FUNC1(pxmitframe, pbuf);

	pdesc = (struct tx_desc *)pbuf;
	pdesc->txdw0 = pdesc->txdw0;
	pdesc->txdw1 = pdesc->txdw1;
	pdesc->txdw2 = pdesc->txdw2;
	pdesc->txdw3 = pdesc->txdw3;
	pdesc->txdw4 = pdesc->txdw4;
	pdesc->txdw5 = pdesc->txdw5;
	pdesc->txdw6 = pdesc->txdw6;
	pdesc->txdw7 = pdesc->txdw7;
	pdesc->txdw8 = pdesc->txdw8;
	pdesc->txdw9 = pdesc->txdw9;

	FUNC0(pdesc);
}