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
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct mlme_priv {int /*<<< orphan*/  num_of_scanned; struct __queue scanned_queue; struct __queue free_bss_pool; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 struct list_head* FUNC1 (struct __queue*) ; 
 struct list_head* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct	mlme_priv *pmlmepriv)
{
	struct __queue *free_queue = &pmlmepriv->free_bss_pool;
	struct __queue *scan_queue = &pmlmepriv->scanned_queue;
	struct list_head	*plist, *phead, *ptemp;

	FUNC0(_module_rtl871x_mlme_c_, _drv_notice_, ("+free_scanqueue\n"));
	FUNC5(&scan_queue->lock);
	FUNC5(&free_queue->lock);

	phead = FUNC1(scan_queue);
	plist = FUNC2(phead);

	while (plist != phead) {
		ptemp = FUNC2(plist);
		FUNC4(plist);
		FUNC3(plist, &free_queue->queue);
		plist = ptemp;
		pmlmepriv->num_of_scanned--;
	}

	FUNC6(&free_queue->lock);
	FUNC6(&scan_queue->lock);
}