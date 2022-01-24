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
struct jsm_channel {TYPE_1__* ch_cls_uart; int /*<<< orphan*/  ch_mostat; } ;
struct TYPE_2__ {int /*<<< orphan*/  mcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct jsm_channel *ch)
{
	if (!ch)
		return;

	FUNC0(ch->ch_mostat, &ch->ch_cls_uart->mcr);
}