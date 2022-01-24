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
struct wilc {int /*<<< orphan*/  txq_thread_started; int /*<<< orphan*/  sync_event; int /*<<< orphan*/  cfg_event; int /*<<< orphan*/  txq_event; int /*<<< orphan*/  txq_add_to_head_cs; int /*<<< orphan*/  txq_spinlock; int /*<<< orphan*/  vif_mutex; int /*<<< orphan*/  cfg_cmd_lock; int /*<<< orphan*/  rxq_cs; int /*<<< orphan*/  hif_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wilc *wl)
{
	FUNC1(&wl->hif_cs);
	FUNC1(&wl->rxq_cs);
	FUNC1(&wl->cfg_cmd_lock);
	FUNC1(&wl->vif_mutex);

	FUNC2(&wl->txq_spinlock);
	FUNC1(&wl->txq_add_to_head_cs);

	FUNC0(&wl->txq_event);
	FUNC0(&wl->cfg_event);
	FUNC0(&wl->sync_event);
	FUNC0(&wl->txq_thread_started);
}