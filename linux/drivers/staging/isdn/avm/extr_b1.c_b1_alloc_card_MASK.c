#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* card; int /*<<< orphan*/  ncci_head; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_8__ {int nr_controllers; int /*<<< orphan*/  lock; TYPE_1__* ctrlinfo; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

avmcard *FUNC5(int nr_controllers)
{
	avmcard *card;
	avmctrl_info *cinfo;
	int i;

	card = FUNC3(sizeof(*card), GFP_KERNEL);
	if (!card)
		return NULL;

	cinfo = FUNC1(nr_controllers, sizeof(*cinfo), GFP_KERNEL);
	if (!cinfo) {
		FUNC2(card);
		return NULL;
	}

	card->ctrlinfo = cinfo;
	for (i = 0; i < nr_controllers; i++) {
		FUNC0(&cinfo[i].ncci_head);
		cinfo[i].card = card;
	}
	FUNC4(&card->lock);
	card->nr_controllers = nr_controllers;

	return card;
}