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
typedef  int /*<<< orphan*/  u16 ;
struct rio_channel {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOP ; 
 scalar_t__ FUNC0 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_channel*) ; 
 struct rio_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rio_channel *FUNC4(u16 *ch_num)
{
	struct rio_channel *ch = NULL;

	ch = FUNC2(*ch_num);

	if (FUNC0(ch))
		FUNC3(CHOP, "Failed to allocate channel %d (err=%ld)",
			    *ch_num, FUNC1(ch));
	else
		*ch_num = ch->id;

	return ch;
}