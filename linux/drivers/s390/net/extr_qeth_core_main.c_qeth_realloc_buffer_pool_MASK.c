#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int buf_count; } ;
struct TYPE_4__ {int buf_count; } ;
struct TYPE_6__ {TYPE_2__ init_pool; TYPE_1__ in_buf_pool; } ;
struct qeth_card {scalar_t__ state; TYPE_3__ qdio; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 

int FUNC4(struct qeth_card *card, int bufcnt)
{
	FUNC0(card, 2, "realcbp");

	if (card->state != CARD_STATE_DOWN)
		return -EPERM;

	/* TODO: steel/add buffers from/to a running card's buffer pool (?) */
	FUNC2(card);
	FUNC3(card);
	card->qdio.in_buf_pool.buf_count = bufcnt;
	card->qdio.init_pool.buf_count = bufcnt;
	return FUNC1(card);
}