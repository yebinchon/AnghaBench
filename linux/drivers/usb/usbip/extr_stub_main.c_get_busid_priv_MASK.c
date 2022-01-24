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
struct bus_id_priv {int /*<<< orphan*/  busid_lock; } ;

/* Variables and functions */
 struct bus_id_priv* busid_table ; 
 int /*<<< orphan*/  busid_table_lock ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct bus_id_priv *FUNC3(const char *busid)
{
	int idx;
	struct bus_id_priv *bid = NULL;

	FUNC1(&busid_table_lock);
	idx = FUNC0(busid);
	if (idx >= 0) {
		bid = &(busid_table[idx]);
		/* get busid_lock before returning */
		FUNC1(&bid->busid_lock);
	}
	FUNC2(&busid_table_lock);

	return bid;
}