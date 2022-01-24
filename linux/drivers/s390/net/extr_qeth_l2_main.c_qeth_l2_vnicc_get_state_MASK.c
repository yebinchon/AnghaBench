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
typedef  int u32 ;
struct TYPE_3__ {int sup_chars; int cur_chars; } ;
struct TYPE_4__ {TYPE_1__ vnicc; } ;
struct qeth_card {TYPE_2__ options; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 scalar_t__ FUNC2 (struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*) ; 

int FUNC4(struct qeth_card *card, u32 vnicc, bool *state)
{
	int rc = 0;

	FUNC0(card, 2, "vniccgch");

	/* do not get anything if BridgePort is enabled */
	if (FUNC1(card))
		return -EBUSY;

	/* check if characteristic is supported */
	if (!(card->options.vnicc.sup_chars & vnicc))
		return -EOPNOTSUPP;

	/* if card is ready, query current VNICC state */
	if (FUNC2(card))
		rc = FUNC3(card);

	*state = (card->options.vnicc.cur_chars & vnicc) ? true : false;
	return rc;
}