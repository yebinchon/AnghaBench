#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct sta_priv {int /*<<< orphan*/  auth_list; int /*<<< orphan*/  asoc_list; TYPE_1__ free_sta_queue; int /*<<< orphan*/ * sta_hash; scalar_t__ pstainfo_buf; TYPE_1__ wakeup_q; TYPE_1__ sleep_q; scalar_t__ asoc_sta_count; int /*<<< orphan*/  sta_hash_lock; scalar_t__ pallocated_stainfo_buf; } ;
struct sta_info {int /*<<< orphan*/  list; } ;
typedef  int s32 ;
typedef  int addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_STA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct	sta_priv *pstapriv)
{
	struct sta_info *psta;
	s32 i;

	pstapriv->pallocated_stainfo_buf = FUNC3(sizeof(struct sta_info) *
						   NUM_STA + 4, GFP_ATOMIC);
	if (!pstapriv->pallocated_stainfo_buf)
		return -ENOMEM;
	pstapriv->pstainfo_buf = pstapriv->pallocated_stainfo_buf + 4 -
		((addr_t)(pstapriv->pallocated_stainfo_buf) & 3);
	FUNC1(&pstapriv->free_sta_queue);
	FUNC5(&pstapriv->sta_hash_lock);
	pstapriv->asoc_sta_count = 0;
	FUNC1(&pstapriv->sleep_q);
	FUNC1(&pstapriv->wakeup_q);
	psta = (struct sta_info *)(pstapriv->pstainfo_buf);
	for (i = 0; i < NUM_STA; i++) {
		FUNC2(psta);
		FUNC0(&(pstapriv->sta_hash[i]));
		FUNC4(&psta->list, &pstapriv->free_sta_queue.queue);
		psta++;
	}
	FUNC0(&pstapriv->asoc_list);
	FUNC0(&pstapriv->auth_list);
	return 0;
}