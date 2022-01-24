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
struct snic_tgt {int /*<<< orphan*/  list; int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct snic_tgt* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snic_tgt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snic_tgt*) ; 

void
FUNC7(struct device *dev)
{
	struct snic_tgt *tgt = FUNC3(dev);

	FUNC1(FUNC6(tgt),
		       "Target Device ID %d (%s) Permanently Deleted.\n",
		       tgt->id,
		       FUNC2(dev));

	FUNC0(!FUNC5(&tgt->list));
	FUNC4(tgt);
}