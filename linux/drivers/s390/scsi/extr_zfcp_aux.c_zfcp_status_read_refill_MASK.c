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
struct zfcp_adapter {scalar_t__ stat_read_buf_num; int /*<<< orphan*/  stat_miss; int /*<<< orphan*/  qdio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct zfcp_adapter *adapter)
{
	while (FUNC0(&adapter->stat_miss, -1, 0))
		if (FUNC4(adapter->qdio)) {
			FUNC1(&adapter->stat_miss); /* undo add -1 */
			if (FUNC2(&adapter->stat_miss) >=
			    adapter->stat_read_buf_num) {
				FUNC3(adapter, 0, "axsref1");
				return 1;
			}
			break;
		}
	return 0;
}