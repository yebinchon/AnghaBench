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
typedef  int /*<<< orphan*/  u32 ;
struct smp2p_entry {int /*<<< orphan*/  smp2p; int /*<<< orphan*/  lock; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *data, u32 mask, u32 value)
{
	struct smp2p_entry *entry = data;
	u32 orig;
	u32 val;

	FUNC2(&entry->lock);
	val = orig = FUNC1(entry->value);
	val &= ~mask;
	val |= value;
	FUNC4(val, entry->value);
	FUNC3(&entry->lock);

	if (val != orig)
		FUNC0(entry->smp2p);

	return 0;
}