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
typedef  int u8 ;
struct TYPE_3__ {int tid; } ;
struct cw1200_txinfo {TYPE_1__ txpriv; TYPE_2__* hdr; } ;
struct cw1200_common {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int IEEE80211_QOS_CTL_TID_MASK ; 
 int* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cw1200_common *priv,
		     struct cw1200_txinfo *t)
{
	if (FUNC2(t->hdr->frame_control)) {
		u8 *qos = FUNC0(t->hdr);
		t->txpriv.tid = qos[0] & IEEE80211_QOS_CTL_TID_MASK;
	} else if (FUNC1(t->hdr->frame_control)) {
		t->txpriv.tid = 0;
	}
}