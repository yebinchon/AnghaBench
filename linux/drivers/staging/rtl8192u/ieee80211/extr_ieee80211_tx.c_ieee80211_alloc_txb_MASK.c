#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_txb {int nr_frags; TYPE_1__** fragments; int /*<<< orphan*/  frag_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {struct ieee80211_txb* cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_txb*) ; 
 struct ieee80211_txb* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_txb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct ieee80211_txb *FUNC7(int nr_frags, int txb_size,
						 gfp_t gfp_mask)
{
	struct ieee80211_txb *txb;
	int i;
	txb = FUNC4(
		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
		gfp_mask);
	if (!txb)
		return NULL;

	FUNC5(txb, 0, sizeof(struct ieee80211_txb));
	txb->nr_frags = nr_frags;
	txb->frag_size = FUNC0(txb_size);

	for (i = 0; i < nr_frags; i++) {
		txb->fragments[i] = FUNC1(txb_size);
		if (FUNC6(!txb->fragments[i])) {
			i--;
			break;
		}
		FUNC5(txb->fragments[i]->cb, 0, sizeof(txb->fragments[i]->cb));
	}
	if (FUNC6(i != nr_frags)) {
		while (i >= 0)
			FUNC2(txb->fragments[i--]);
		FUNC3(txb);
		return NULL;
	}
	return txb;
}