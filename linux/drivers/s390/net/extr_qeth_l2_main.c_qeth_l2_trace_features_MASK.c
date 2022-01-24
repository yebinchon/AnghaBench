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
struct TYPE_5__ {int /*<<< orphan*/  sup_chars; } ;
struct TYPE_4__ {int /*<<< orphan*/  supported_funcs; } ;
struct TYPE_6__ {TYPE_2__ vnicc; TYPE_1__ sbp; } ;
struct qeth_card {TYPE_3__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 

__attribute__((used)) static void FUNC2(struct qeth_card *card)
{
	/* Set BridgePort features */
	FUNC1(card, 2, "featuSBP");
	FUNC0(card, 2, &card->options.sbp.supported_funcs,
		      sizeof(card->options.sbp.supported_funcs));
	/* VNIC Characteristics features */
	FUNC1(card, 2, "feaVNICC");
	FUNC0(card, 2, &card->options.vnicc.sup_chars,
		      sizeof(card->options.vnicc.sup_chars));
}