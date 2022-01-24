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
struct cw1200_txinfo {int /*<<< orphan*/  skb; TYPE_3__* tx_info; int /*<<< orphan*/  hdrlen; TYPE_4__* hdr; } ;
struct cw1200_common {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  frame_control; } ;
struct TYPE_6__ {TYPE_1__* hw_key; } ;
struct TYPE_7__ {TYPE_2__ control; } ;
struct TYPE_5__ {int icv_len; scalar_t__ cipher; scalar_t__ iv_len; } ;

/* Variables and functions */
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct cw1200_common *priv,
		  struct cw1200_txinfo *t)
{
	if (!t->tx_info->control.hw_key ||
	    !FUNC0(t->hdr->frame_control))
		return 0;

	t->hdrlen += t->tx_info->control.hw_key->iv_len;
	FUNC1(t->skb, t->tx_info->control.hw_key->icv_len);

	if (t->tx_info->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP)
		FUNC1(t->skb, 8); /* MIC space */

	return 0;
}