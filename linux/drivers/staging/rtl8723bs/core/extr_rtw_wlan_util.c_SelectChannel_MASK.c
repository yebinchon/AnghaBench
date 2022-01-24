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
struct adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  setch_mutex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,unsigned char) ; 

void FUNC5(struct adapter *padapter, unsigned char channel)
{
	if (FUNC1(&(FUNC0(padapter)->setch_mutex)))
		return;

	/* saved channel info */
	FUNC4(padapter, channel);

	FUNC3(padapter, channel);

	FUNC2(&(FUNC0(padapter)->setch_mutex));
}