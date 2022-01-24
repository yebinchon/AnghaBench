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
struct rio_channel {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ch_idr ; 
 struct rio_channel* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rio_channel *FUNC4(u16 nr)
{
	struct rio_channel *ch;

	FUNC2(&idr_lock);
	ch = FUNC0(&ch_idr, nr);
	if (ch)
		FUNC1(&ch->ref);
	FUNC3(&idr_lock);
	return ch;
}