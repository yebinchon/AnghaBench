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
struct TYPE_7__ {int /*<<< orphan*/  entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct qeth_card {int /*<<< orphan*/  close_dev_work; int /*<<< orphan*/  buffer_reclaim_work; TYPE_3__ ipato; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  cmd_waiter_list; int /*<<< orphan*/  kernel_thread_starter; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  thread_mask_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__ info; } ;
struct TYPE_6__ {int /*<<< orphan*/  driver_info; } ;
struct TYPE_8__ {TYPE_2__ id; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CARD_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_buffer_reclaim_work ; 
 int /*<<< orphan*/  qeth_close_dev_handler ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  qeth_start_kernel_thread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct qeth_card *card)
{
	FUNC4(card, 2, "setupcrd");

	card->info.type = FUNC0(card)->id.driver_info;
	card->state = CARD_STATE_DOWN;
	FUNC9(&card->lock);
	FUNC9(&card->thread_mask_lock);
	FUNC6(&card->conf_mutex);
	FUNC6(&card->discipline_mutex);
	FUNC3(&card->kernel_thread_starter, qeth_start_kernel_thread);
	FUNC2(&card->cmd_waiter_list);
	FUNC5(&card->wait_q);
	FUNC8(card);
	/* IP address takeover */
	FUNC2(&card->ipato.entries);
	FUNC7(card);
	FUNC1(&card->buffer_reclaim_work, qeth_buffer_reclaim_work);
	FUNC3(&card->close_dev_work, qeth_close_dev_handler);
}