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
struct qeth_card {TYPE_1__* gdev; int /*<<< orphan*/  qeth_service_level; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  read_cmd; int /*<<< orphan*/  data; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct qeth_card *card)
{
	FUNC0(card, 2, "freecrd");
	FUNC4(&card->read);
	FUNC4(&card->write);
	FUNC4(&card->data);
	FUNC6(card->read_cmd);
	FUNC1(card->event_wq);
	FUNC5(card);
	FUNC7(&card->qeth_service_level);
	FUNC2(&card->gdev->dev, NULL);
	FUNC3(card);
}